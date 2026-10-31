#!/bin/bash
# Bring the repos under ~/projects on another machine in line with the git-kik migration:
# - origin of every moved repo is switched to its new URL (no fetch, nothing else is touched)
# - for repos whose folder changed, asks whether to move (or delete, if the new folder already exists)
# - for removed repos, asks per project whether to delete the local folder
# Source of truth is git-kik-migration.tsv next to this script (last line per repo wins).
# usage: update_moved_repos.sh [-n]    -n: only show what would happen
set -u
DRY=0; [ "${1:-}" = "-n" ] && DRY=1
HERE=$(cd "$(dirname "$0")" && pwd)
TSV="$HERE/git-kik-migration.tsv"
PROJECTS="${PROJECTS:-$HOME/projects}"
[ -f "$TSV" ] || { echo "$TSV fehlt" >&2; exit 1; }
[ -d "$PROJECTS" ] || { echo "$PROJECTS fehlt" >&2; exit 1; }

# folders that cloneMissingProjectsHere.sh now clones to a different place
declare -A MOVED=(
	[camera_sender]=biogas_zentrale_v0p1
	[swarminteligence_projects/warehouseautomation]=swarm_intelligence_projects/warehouseautomation
)
# removed projects that are not in the tsv: folder -> reason
declare -A EXTRA_REMOVED=(
	[fleximaus_projects/artenmodel]="Remote existiert nicht mehr"
	[optimaise_projects/Enterprise_RAG]="komplett in aiengineeringblueprints/Enterprise_RAG_Blueprint enthalten"
)

# comparable form of a git url: no scheme/user, host:path -> host/path, no .git, lowercase (GitLab ignores case)
norm() {
	local u="${1,,}"
	u="${u#ssh://}"; u="${u#https://}"; u="${u#http://}"
	[[ $u =~ ^[^/]*@ ]] && u="${u#*@}"
	u="${u/:/\/}"; u="${u%/}"; u="${u%.git}"
	printf '%s' "$u"
}

declare -A BY_OLD BY_NEW NEW STATUS NOTE
while IFS=$'\t' read -r _ repo old new status note; do
	[ "$repo" = repo ] && continue
	BY_OLD[$(norm "$old")]=$repo
	[ "$new" != - ] && BY_NEW[$(norm "$new")]=$repo
	NEW[$repo]=$new; STATUS[$repo]=$status; NOTE[$repo]=$note
done < "$TSV"

switched=0; unchanged=0
moves=(); removes=()
while IFS= read -r -d '' g; do
	d=${g%/.git}; rel=${d#"$PROJECTS"/}
	url=$(git -C "$d" remote get-url origin 2>/dev/null) || url=""
	if [ -n "${EXTRA_REMOVED[$rel]:-}" ]; then
		removes+=("$rel|${EXTRA_REMOVED[$rel]}"); continue
	fi
	[ -z "$url" ] && continue
	repo=${BY_OLD[$(norm "$url")]:-${BY_NEW[$(norm "$url")]:-}}
	# same folder, but cloned from some other git-kik spelling
	[ -z "$repo" ] && [[ $url == *git-kik.hs-ansbach.de* ]] && [ -n "${STATUS[$rel]:-}" ] && repo=$rel
	[ -z "$repo" ] && continue

	if [ "${STATUS[$repo]}" = REMOVED ]; then
		removes+=("$rel|entfernt${NOTE[$repo]:+: ${NOTE[$repo]}}"); continue
	fi
	new=${NEW[$repo]}
	if [ "$(norm "$url")" != "$(norm "$new")" ]; then
		echo "$rel: $url -> $new"
		[ $DRY = 1 ] || git -C "$d" remote set-url origin "$new"
		switched=$((switched + 1))
	else
		unchanged=$((unchanged + 1))
	fi
	[ -n "${MOVED[$rel]:-}" ] && moves+=("$rel|${MOVED[$rel]}")
done < <(find "$PROJECTS" -mindepth 2 -maxdepth 4 -name .git -type d -prune -print0 | sort -z)

echo
echo "origin umgestellt: $switched, bereits aktuell: $unchanged"
[ $DRY = 1 ] && echo "(Probelauf, nichts geändert)"

# answers come from the terminal even if stdin is redirected; falls back to stdin without a tty
{ exec 3</dev/tty; } 2>/dev/null || exec 3<&0
ask() { local a; read -r -u 3 -p "$1 [j/N] " a || return 1; [[ $a == [jJyY]* ]]; }

describe() {
	local d=$1 changes unpushed stashes
	changes=$(git -C "$d" status --porcelain 2>/dev/null | wc -l)
	unpushed=$(git -C "$d" rev-list --count --branches --not --remotes 2>/dev/null || echo "?")
	stashes=$(git -C "$d" stash list 2>/dev/null | wc -l)
	echo "  Größe: $(du -sh "$d" 2>/dev/null | cut -f1)"
	echo "  geänderte/ungetrackte Dateien: $changes, Commits auf keinem Remote: $unpushed, Stashes: $stashes"
	[ "$changes" != 0 ] || [ "$unpushed" != 0 ] || [ "$stashes" != 0 ] && echo "  ACHTUNG: enthält lokale Arbeit, die sonst nirgends liegt"
}

remove_dir() {
	local d=$1 parent
	parent=$(dirname "$d")
	if [ $DRY = 1 ]; then echo "  (Probelauf) würde löschen: $d"; return; fi
	rm -rf -- "$d" && echo "  gelöscht"
	# drop the group folder if it became empty
	[ "$parent" != "$PROJECTS" ] && rmdir --ignore-fail-on-non-empty -- "$parent"
}

for m in "${moves[@]}"; do
	rel=${m%%|*}; target=${m#*|}
	echo
	echo "== $rel wird jetzt nach $target geklont"
	describe "$PROJECTS/$rel"
	if [ -e "$PROJECTS/$target" ]; then
		ask "$target existiert schon. Alten Ordner $rel löschen?" && remove_dir "$PROJECTS/$rel"
	elif ask "Nach $target verschieben?"; then
		if [ $DRY = 1 ]; then echo "  (Probelauf) würde verschieben"
		else mkdir -p "$(dirname "$PROJECTS/$target")" && mv -- "$PROJECTS/$rel" "$PROJECTS/$target" && echo "  verschoben"
			parent=$(dirname "$PROJECTS/$rel"); [ "$parent" != "$PROJECTS" ] && rmdir --ignore-fail-on-non-empty -- "$parent"
		fi
	fi
done

for r in "${removes[@]}"; do
	rel=${r%%|*}; reason=${r#*|}
	echo
	echo "== $rel ($reason)"
	describe "$PROJECTS/$rel"
	ask "Lokal löschen?" && remove_dir "$PROJECTS/$rel"
done
[ ${#moves[@]} = 0 ] && [ ${#removes[@]} = 0 ] && echo "keine verschobenen oder entfernten Projekte gefunden"
exit 0
