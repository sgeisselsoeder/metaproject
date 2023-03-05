#  !/bin/bash
BASEPATH=`pwd`

cd ~/projects/old/

# GITLAB_URL_HS="geis.ddnss.de"
GITLAB_URL_HS="git-kik.hs-ansbach.de"
GITGROUPTAG="_projects"


# git clone git@geis.ddnss.de:wise21_ki1/aufgabe1.git wise21_ki1_a1
# git clone git@geis.ddnss.de:wise21_ki1/ki-aufgabe-2.git wise21_ki1_a2
# git clone git@geis.ddnss.de:sgeisselsoeder/ki-aufgabe-3-loesung.git wise21_ki1_a3_loesung
# git clone git@geis.ddnss.de:wise21_ki1/ki-aufgabe-3.git wise21_ki1_a3

GROUPNAME="2021_p1"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in wise21_p1_klausurloesung wise21_p1_klausuraufgaben
do
	pwd
	cd ${projectName}
	echo ${projectName}
	echo ${projectName/_wise/}
	pwd
	git remote -v
	# git remote set-url origin git@${GITLAB_URL_HS}:${GROUPNAME}_material/${projectName/_wise/}.git
	git remote set-url origin git@${GITLAB_URL_HS}:2021_wise_p1_material/${projectName}.git
	echo "new remotes"
	git remote -v
	git push
	cd ~/projects/old/ ;
done


# GROUPNAME="2021_ki1"
# mkdir -p ${GROUPNAME}${GITGROUPTAG}
# for projectName in wise21_ki1_a4_loesung wise21_ki1_a5_loesung wise21_ki1_a6_loesung wise21_ki1_a7_loesung \
# 	wise21_ki1_a4 wise21_ki1_a5 wise21_ki1_a6 wise21_ki1_a7 wise21_ki1_klausur wise21_ki1_probeklausur \
# 	wise21_ki1_klausuraufgaben wise21_ki1_klausurloesung 2022_sose_p1_klausur 2022_sose_ki1_klausur
# do
# 	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
# 		git clone git@${GITLAB_URL_HS}:${GROUPNAME}_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
# 	fi
# done
