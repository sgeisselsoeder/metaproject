#!/bin/bash
# Move a repo away from git-kik.hs-ansbach.de.
# usage: migrate_from_kik.sh <repo-dir relative to ~/projects> <new-origin-url|SKIP|LATER|REMOVE> [note]
# The old origin is kept as remote "kik". Every decision is logged to git-kik-migration.tsv.

PROJECTS=~/projects
LOG=$(dirname "$(readlink -f "$0")")/git-kik-migration.tsv
CLONESCRIPT=$(dirname "$(readlink -f "$0")")/cloneMissingProjectsHere.sh
[ -f "$LOG" ] || printf "date\trepo\told_origin\tnew_origin\tstatus\tnote\n" > "$LOG"

repo="$1"; target="$2"; note="$3"
cd "$PROJECTS/$repo" || exit 1
old=$(git remote get-url kik 2>/dev/null || git remote get-url origin)

log() { printf "%s\t%s\t%s\t%s\t%s\t%s\n" "$(date +%F)" "$repo" "$old" "$1" "$2" "$note" >> "$LOG"; }

case "$target" in
	SKIP|LATER) log "-" "$target"; echo "$repo: $target"; exit 0;;
	REMOVE) log "-" "REMOVED"; echo "$repo: REMOVED"
		sed -i "s|^# end of git-kik migration$|# removed: $repo ($old)\n&|" "$CLONESCRIPT"; exit 0;;
esac

git remote get-url kik >/dev/null 2>&1 || git remote add kik "$old"
# the pi does not create repos on push: create a bare repo there first
if [[ "$target" =~ ^ssh://pi@bytegeist.ddnss.de:50022(/.*\.git)$ ]]; then
	d="${BASH_REMATCH[1]}"
	ssh -p 50022 pi@bytegeist.ddnss.de "[ -d '$d' ] || { git init --bare '$d' && git --git-dir='$d' symbolic-ref HEAD refs/heads/main; }"
fi
git remote set-url origin "$target"
if git push -u origin --all && git push origin --tags; then
	log "$target" "pushed"; echo "$repo -> $target OK"
	# register in clone script (removing the old git-kik entry is done by hand)
	sed -i "s|^# end of git-kik migration$|clone_if_missing $target $repo\n&|" "$CLONESCRIPT"
else
	log "$target" "PUSH FAILED"; echo "$repo -> $target PUSH FAILED" >&2; exit 2
fi
