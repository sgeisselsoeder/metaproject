#  !/bin/bash
BASEPATH=`pwd`
# clone every repo I want.

# clone teaching projects
# git clone git@geis.ddnss.de:wise21_ki1/aufgabe1.git wise21_ki1_a1
# git clone git@geis.ddnss.de:wise21_ki1/ki-aufgabe-2.git wise21_ki1_a2
# git clone git@geis.ddnss.de:sgeisselsoeder/ki-aufgabe-3-loesung.git wise21_ki1_a3_loesung
# git clone git@geis.ddnss.de:wise21_ki1/ki-aufgabe-3.git wise21_ki1_a3
# git clone git@geis.ddnss.de:wise21_programmieren1/aufgabe1.git wise21_p1_a1
# git clone git@geis.ddnss.de:wise21_programmieren1/aufgabe2.git wise21_p1_a2
# git clone git@geis.ddnss.de:wise21_programmieren1/programmierena3.git wise21_p1_a3
# git clone git@geis.ddnss.de:wise21_programmieren1/programmieren-A4.git wise21_p1_a4


# 2022_ki1 @ geis.ddnss.de
GROUPNAME="2022_ki1_gitgroup"
mkdir -p $GROUPNAME
for projectName in 2022_ki1_vorlesung 2022_ki1_a3_loesung 2022_ki1_a3 2022_ki1_uebung_bewerten \
	2022_ki1_a1 2022_ki1_a2_loesung 2022_ki1_a2 2022_ki1_a2.5 2022_ki1_a4_loesung \
	2022_ki1_a5_loesung 2022_ki1_a6_loesung 2022_ki1_a7_loesung 2022_ki1_a4 \
	2022_ki1_a5 2022_ki1_a3 2022_ki1_probeklausur 2022_ki1_klausur
do
	if [ ! -d "${GROUPNAME}/${projectName}" ]; then
		git clone git@geis.ddnss.de:2022_ki1_material/${projectName}.git ${GROUPNAME}/${projectName}
	fi
done
for projectName in 2022_ki1_klausuraufgaben
do
	if [ ! -d "${GROUPNAME}/${projectName}" ]; then
		git clone git@git-kik.hs-ansbach.de:sgeisselsoeder/${projectName}.git ${GROUPNAME}/${projectName}
	fi
done


# 2022_ki3 @ geis.ddnss.de
GROUPNAME="2022_ki3_gitgroup"
mkdir -p $GROUPNAME
for projectName in 2022_ki3_vorlesung 2022_ki3_a1_loesung 2022_ki3_a1 2022_ki3_a2_loesung 2022_ki3_a2 2022_ki3_a3_loesung 2022_ki3_klausur 2022_ki3_a4 2022_ki3_a4_loesung 2022_ki3_a5_loesung 2022_ki3_a5 2022_ki3_klausuraufgaben
do
	if [ ! -d "${GROUPNAME}/${projectName}" ]; then
		git clone git@geis.ddnss.de:2022_ki3_material/${projectName}.git ${GROUPNAME}/${projectName}
	fi
done
for projectName in 2022_sose_biolern_vorlesung demo_nn website_static
do
	if [ ! -d "${projectName}" ]; then
		git clone git@git-kik.hs-ansbach.de:sgeisselsoeder/${projectName}.git ${projectName}
	fi
done


GROUPNAME="2021_p1_gitgroup"
mkdir -p $GROUPNAME
for projectName in wise21_p1_a5_loesung wise21_p1_a6_loesung wise21_p1_a7_loesung wise21_p1_a8_loesung wise21_p1_a5 wise21_p1_a6 wise21_p1_a7 wise21_p1_a8 wise21_p1_klausur wise21_p1_probeklausur wise21_p1_klausuraufgaben wise21_p1_klausurloesung wise21_p1_klausur 2022_sose_p1_klausur 2022_sose_p1_klausuraufgaben 2022_sose_p1_klausur_vorbenotung
do
	if [ ! -d "${GROUPNAME}/${projectName}" ]; then
		git clone git@git-kik.hs-ansbach.de:sgeisselsoeder/${projectName}.git ${GROUPNAME}/${projectName}
	fi
done
GROUPNAME="2021_ki1_gitgroup"
mkdir -p $GROUPNAME
for projectName in wise21_ki1_a4_loesung wise21_ki1_a5_loesung wise21_ki1_a6_loesung wise21_ki1_a7_loesung wise21_ki1_a4 wise21_ki1_a5 wise21_ki1_a6 wise21_ki1_a7 wise21_ki1_klausur wise21_ki1_probeklausur wise21_ki1_klausuraufgaben wise21_ki1_klausurloesung 2022_sose_p1_klausur 2022_sose_ki1_klausur
do
	if [ ! -d "${GROUPNAME}/${projectName}" ]; then
		git clone git@git-kik.hs-ansbach.de:sgeisselsoeder/${projectName}.git ${GROUPNAME}/${projectName}
	fi
done


GROUPNAME="2022_ki2_gitgroup"
mkdir -p $GROUPNAME
for projectName in 2022_sose_ki2_vorlesung 2022_sose_ki2_a1_loesung 2022_sose_ki2_a2_loesung 2022_sose_p1_klausur 2022_sose_ki1_klausur
do
	if [ ! -d "${GROUPNAME}/${projectName}" ]; then
		git clone git@git-kik.hs-ansbach.de:sgeisselsoeder/${projectName}.git ${GROUPNAME}/${projectName}
	fi
done
# for projectName in 2022_sose_ki2_vorlesung 2022_sose_biolern_vorlesung gitlab_korrektur 2022_sose_ki2_a1_loesung 2022_sose_ki2_a2_loesung 2022_sose_ki2_a3_loesung
for projectName in 2022_sose_ki2_a3_loesung 2022_sose_ki2_a3 2022_sose_ki2_a4_loesung 2022_sose_ki2_a4 2022_sose_ki2_a5_loesung 2022_sose_ki2_a5 2022_sose_ki2_klausuraufgaben 2022_sose_ki2_klausur 2022_sose_ki2_korrektur_klausur
do
	if [ ! -d "${GROUPNAME}/${projectName}" ]; then
		git clone git@git-kik.hs-ansbach.de:2022_sose_ki2_material/${projectName}.git ${GROUPNAME}/${projectName}
	fi
done

# for projectName in 2022_wise_ki1_vorlesung 2022_wise_ki1_a1 2022_wise_ki1_a2 2022_wise_ki1_a2_loesung
# do
# 	if [ ! -d "$projectName" ]; then
# 		git clone git@git-kik.hs-ansbach.de:2022_wise_ki1_material/${projectName}.git ${projectName}
# 	fi
# done
git clone git@git-kik.hs-ansbach.de:2022_sose_ki2_material/2022_ki2_nachklausur.git


for projectName in 2021_wise_p1_vorlesung
do
	if [ ! -d "$projectName" ]; then
		git clone git@git-kik.hs-ansbach.de:2021_wise_p1_material/${projectName}.git ${projectName}
	fi
done

# for projectName in 2022_wise_ki3_vorlesung 2022_wise_ki3_a1 2022_wise_ki3_a1_loesung
# do
# 	if [ ! -d "$projectName" ]; then
# 		git clone git@git-kik.hs-ansbach.de:2022_wise_ki3_material/${projectName}.git ${projectName}
# 	fi
# done

projectName=2022_sose_ki2_data
if [ ! -d "$projectName" ]; then
	git clone git@git-kik.hs-ansbach.de:2022_sose_ki2/${projectName}.git ${projectName}
fi
