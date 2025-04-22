#  !/bin/bash
BASEPATH=`pwd`
# clone every repo I want.


GITLAB_COM="gitlab.com"
GITLAB_HS="git-kik.hs-ansbach.de"
EIGEN_GITLAB=${GITLAB_HS}  # eigen Gitlab is no more
GITGROUPTAG="_projects"


GROUPNAME="2025_studentenprojekte"
SUB_URL="hsangit/aki/praxisprojekt-1/ss25"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in dronepose 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_COM}:${SUB_URL}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
SUB_URL="hsangit/aki/praxisprojekt-2/ss25"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in gaia hautkrebs chart-erkennung tetris-ai 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_COM}:${SUB_URL}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done



GROUPNAME="2025_ki4"
SUB_URL="hsangit/aki/deep-learning/sose25/material"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in vorlesung \
	a1 a1_loesung \
	a2 a2_loesung \
	a3 a3_loesung
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_COM}:${SUB_URL}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done

GROUPNAME="2025_kiforschung"
SUB_URL="hsangit/aki/ki-forschung/2025"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in survival-market material
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_COM}:${SUB_URL}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done



GROUPNAME="2024_ki3"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2024_ki3_vorlesung \
        2024_ki3_a1 2024_ki3_a1_loesung  \
        2024_ki3_a2_loesung \
        2024_ki3_a3_loesung \
        2024_ki3_a4_loesung \
        2024_ki3_a5_loesung \
        2024_ki3_a6_loesung \
        2024_ki3_a7_loesung \
        2024_ki3_a8_loesung \
	2024_ki3_klausuraufgaben 2024_ki3_klausur
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="2024_ki4"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2024_ki4_vorlesung \
	2024_ki4_a1 2024_ki4_a1_loesung \
	2024_ki4_a2 2024_ki4_a2_loesung \
	2024_ki4_a2_5 2024_ki4_a2_5_loesung \
	2024_ki4_a2_6 \
	2024_ki4_a3 2024_ki4_a3_loesung \
	2024_ki4_a4_loesung 2024_ki4_a4 \
	2024_ki4_a4_5_loesung 2024_ki4_a4_5 \
	2024_ki4_a5 2024_ki4_a5_loesung \
	2024_ki4_a6 2024_ki4_a6_loesung \
	2024_ki4_a7 2024_ki4_a7_loesung \
	2024_ki4_a8 2024_ki4_a8_loesung 2024_ki4_a8_loesung_alt \
	2024_ki4_muendliche_pruefungen
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done

GROUPNAME="2024_ki2"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2024_ki2_vorlesung \
	2024_ki2_a1 2024_ki2_a1_loesung \
	2024_ki2_a2 2024_ki2_a2_loesung \
	2024_ki2_a3 2024_ki2_a3_loesung \
	2024_ki2_a4_loesung \
	2024_ki2_a5 \
	2024_ki2_a6_loesung \
	2024_ki2_a7 2024_ki2_a7_loesung \
	2024_ki2_a8 2024_ki2_a8_loesung \
	2024_ki2_klausuraufgaben 2024_ki2_klausur \
	2024_ki2_klausurkorrektur \
	2024_ki2_nachklausur
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done

GROUPNAME="2024_studentenprojekte"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in hautkrebs drohne eegelektroden elektrodenmessung serviceroboter 3Danomaly shootair frontend bioreaktor genai_music pawprint heimauto
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
# also clone studentprojects subgroup pumpbot 
SUBGROUPNAME="pumpbot"
mkdir -p ${SUBGROUPNAME}${GITGROUPTAG}
for projectName in api cryptofyt3r position_watcher dashboard report
do
	if [ ! -d "${SUBGROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${SUBGROUPNAME}/${projectName}.git ${SUBGROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="aiblueprints"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in lakefs_demo lakefs_demo_test 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		echo 
		git clone git@${GITLAB_COM}:hsangit/research/${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="windforest"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in windforest 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done



GROUPNAME="2024_kiforschung"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2024_kiforschung_vorlesung astro_anomalies 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done

GROUPNAME="turns"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in spectroscopy kleidung_yolo
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done



GROUPNAME="eigenki"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in kigraph eigenki-frontend eigenki-frontend-js eigenki-backend eigenki-installation eigenki-kicontainer
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${EIGEN_GITLAB}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="deep-eeg"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in ap0_versioned_data ap2-data-preprocessing ap3-seizure-detection
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done

GROUPNAME="webapp"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in flask_auth flask_auth2 yaa multilevel_auth multilevel_simple webapp-django 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
for projectName in django-locallibrary-tutorial
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@github.com:sgeisselsoeder/${projectName} ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="2023_studentenprojekte"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in allgemeine_info reinforcementlearningescape produktinhalt autoencoder kognitivekooperation \
	eeg-dl sprachassistent osu deepfake pepperGPT eeg_explainable \
	Image-Reconstruction-using-GANs-and-Autoencoders pawsomepals-unity-project 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done

GROUPNAME="2023_ki3"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2023_ki3_vorlesung \
	2023_ki3_a1 2023_ki3_a1_loesung \
	2023_ki3_a2 2023_ki3_a2_loesung \
	2023_ki3_a3 2023_ki3_a3_loesung \
	2023_ki3_a4 2023_ki3_a4_loesung \
	2023_ki3_a5 2023_ki3_a5_loesung \
	2023_ki3_a6 2023_ki3_a6_loesung \
	2023_ki3_a7 2023_ki3_a7_loesung \
	2023_ki3_a8 2023_ki3_a8_loesung \
	2022_ki3_klausur \
        2023_ki3_klausuraufgaben 2023_ki3_klausur \
	2023_ki3_klausurkorrektur 2024_ki3_nachklausur
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done

# 2023_ki1
GROUPNAME="2023_ki1"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2023_ki1_uebung_bewerten 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="2023_ki2"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2023_ki2_vorlesung 2023_ki2_uebung_bewerten \
	2023_ki2_a1 2023_ki2_a1_loesung \
	2023_ki2_a2 2023_ki2_a2_loesung \
	2023_ki2_a3 2023_ki2_a3_loesung \
	2023_ki2_a4 2023_ki2_a4_loesung \
	2023_ki2_a5b 2023_ki2_a5b_loesung \
	2023_ki2_a6 2023_ki2_a6_loesung \
	2023_ki2_klausur 2023_ki2_klausurkorrektur 2023_ki2_klausuraufgaben 2023_ki2_nachklausur
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
for projectName in 2023_ki2_data
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="2023_ki4"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2023_ki4_vorlesung \
	2023_ki4_a1_loesung 2023_ki4_a1 \
	2023_ki4_a2 2023_ki4_a2_loesung \
	2023_ki4_a3 2023_ki4_a3_loesung \
	2023_ki4_a4 2023_ki4_a4_loesung \
	2023_ki4_a5 2023_ki4_a5_loesung \
	2023_ki4_a6 2023_ki4_a6_loesung_1 2023_ki4_a6_loesung_2 \
	2023_ki4_a7 2023_ki4_a7_loesung 2023_ki4_weitsprung \
	2023_ki4_a8 2023_ki4_a8_loesung2 rl_playground \
	2023_ki4_a9 2023_ki4_a9_loesung \
	2023_ki4_a10 2023_ki4_a10_loesung
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


# 2022_ki1
GROUPNAME="2022_ki1"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2022_ki1_vorlesung 2022_ki1_uebung_bewerten \
	2022_ki1_a1 \
	2022_ki1_a2_loesung 2022_ki1_a2 \
	2022_ki1_a3_loesung 2022_ki1_a3 \
	2022_ki1_a4_loesung 2022_ki1_a4 \
	2022_ki1_a5_loesung 2022_ki1_a5 \
	2022_ki1_a6_loesung 2022_ki1_a6 \
	2022_ki1_probeklausur 2021_ki1_probeklausur \
	2022_ki1_klausur 2022_ki1_klausuraufgaben \
	2022_ki1_a0.5 2022_ki1_a2.5 2022_ki1_a6.5 \
	2023_ki1_nachklausur 2023_ki1_nachklausur_korrektur
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
for projectName in 2022_ki1_korrektur_klausur
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:sgeisselsoeder/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


# 2022_ki3
GROUPNAME="2022_ki3"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2022_ki3_vorlesung \
	2022_ki3_a1_loesung 2022_ki3_a1 \
	2022_ki3_a2_loesung 2022_ki3_a2 \
	2022_ki3_a3_loesung 2022_ki3_a3 \
	2022_ki3_a4_loesung 2022_ki3_a4 \
	2022_ki3_a5_loesung 2022_ki3_a5 \
	2022_ki3_klausur 2022_ki3_klausuraufgaben 2022_ki3_uebung_bewerten \
	2023_ki3_klausuraufgaben 2023_ki3_nachklausur 2023_ki3_korrektur_nachklausur
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="2022_ki2"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2022_ki2_vorlesung \
	2022_sose_ki2_a1 2022_ki2_a1_loesung \
	2022_sose_ki2_a2 2022_ki2_a2_loesung \
	2022_sose_ki2_a3 2022_sose_ki2_a3_loesung \
	2022_sose_ki2_a4 2022_sose_ki2_a4_loesung \
	2022_sose_ki2_a5 2022_sose_ki2_a5_loesung \
	2022_sose_ki2_klausuraufgaben 2022_sose_ki2_klausur \
	2022_ki2_nachklausur 2022_ki2_data
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
# also the grading projects, but not in the shared repo
for projectName in 2022_ki2_korrektur_klausur 2022_ki2_korrektur_nachklausur
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:sgeisselsoeder/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="2021_p1"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2021_wise_p1_vorlesung wise21_p1_codebeispiele \
	wise21_p1_a1 2021_wise_p1_a1_loesung \
	wise21_p1_a2 2021_wise_p1_a2_loesung \
	wise21_p1_a2.5 2021_wise_p1_a2.5_loesung \
	wise21_p1_a3 2021_wise_p1_a3_loesung \
	wise21_p1_a4 2021_wise_p1_a4_loesung \
	wise21_p1_a5 2021_wise_p1_a5_loesung \
	wise21_p1_a6 2021_wise_p1_a6_loesung \
	wise21_p1_a7 2021_wise_p1_a7_loesung \
	wise21_p1_a8 2021_wise_p1_a8_loesung \
	wise21_p1_klausur wise21_p1_probeklausur \
	wise21_p1_klausurloesung wise21_p1_klausuraufgaben \
	2021_wise_p1_klausuraufgabensammlung \
	2022_sose_p1_klausur 2022_sose_p1_klausuraufgaben
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:2021_wise_p1_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
# also the grading projects, but not in the shared repo
for projectName in 2022_sose_p1_klausur_vorbenotung
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:sgeisselsoeder/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done

GROUPNAME="2021_ki1"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in vorlesung_ki1 \
	wise21_ki1_a1 \
	wise21_ki1_a2 \
	wise21_ki1_a3 wise21_ki1_a3_loesung \
	wise21_ki1_a4 wise21_ki1_a4_loesung \
	wise21_ki1_a5 wise21_ki1_a5_loesung \
	wise21_ki1_a6 wise21_ki1_a6_loesung \
	wise21_ki1_a7 wise21_ki1_a7_loesung \
	wise21_ki1_klausur wise21_ki1_probeklausur \
	wise21_ki1_klausuraufgaben wise21_ki1_klausurloesung \
	2022_sose_ki1_klausur
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}_material/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done



# GROUPNAME="paw_print"
# mkdir -p ${GROUPNAME}${GITGROUPTAG}
# for projectName in analytics frontend backend authgate data
# do
# 	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
# 		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
# 	fi
# done


GROUPNAME="techdemos"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in pyscriptweb ansibleapp demo_sprachprotokoll retrain_yolo gradio_apps demo_dvc1 demo_streamlit_webcam
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="biogas"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in maispreis
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done

GROUPNAME="pawprint"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in 2024_studiprojekt pawpoc pawai pawdata backend
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done

GROUPNAME="vision1"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in backend 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:pawprint/${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="kupferopti"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in kupfer_analyse
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
GROUPNAME="kupferpreis"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in kupferpreis 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
GROUPNAME="swarminteligence"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in warehouseautomation 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done




# university projects without own group
for projectName in 2022_sose_biolern_vorlesung 2023_lernverhalten 2023_04_27_forschungs_und_innovationstag bioreaktor \
	2023_07_oechsler 2023_07_siemens pybullet_playground image_upload_server boosted_ensemble treenet kivy-playground \
	2023_12_07_promotionskolleg_cv_zeitr 2023_12_13_ankit_flagler 2023_12_14_ankit_stammtisch \
	reckenberg_wasser_solar data_connector_sftp 2024_lernverhalten 2024_04_18_fit_ki_unternehmen blistervision 2024_05_13_sparkasse \
	2024_ai_in_industry 2024_07_22_ecap einsammeln 2024_09_27_chain_of_thought 2024_09_27_ki_praxis dji_local
do
	if [ ! -d "${projectName}" ]; then
		git clone git@${GITLAB_HS}:sgeisselsoeder/${projectName}.git ${projectName}
	fi
done


# Clone own public projects from github
for projectName in dockerProjects multiscale spielDerNeuronen metaproject erkenntnis demo-self-driving dji_local_backend  # km3netHdf5ToHistograms
do
	if [ ! -d "$projectName" ]; then
		git clone git@github.com:sgeisselsoeder/${projectName} ${projectName}
	fi
done


# Clone all private projects from bytegeist.ddnss.de
# for projectName in featureTools kidsMatch onoff SGClassify sgcu swissKnifeJulia webseiteGsGrosshadern softwareEngineering \
# 	universe openclTest qtTest reviews resourceAwareMachineLearning rechnungen droneSuite ekg ledTests relais \
#	sprachkommandos siemensBewerbungTask biogas geisselsoedercom raspberryErrorLED deDup rfid_player finanzierung aktien \
#	backup-scripts doktorarbeit sprech
# 	permanently inactive: data metaproject singularityProjects checklist notizen reportkm3net2.0asterics convertKm3RootToHdf5 matrixflow


# clone non-teaching repos without gitlab
for projectName in lebenslauf bewerbungen presentations rlweitsprung \
	pythonPDF autoencoderensemble hausmodel \
	ubuntu-default-software onintelcoop glab_verwalten backup-scripts \
	deDup rfid_player universe rechnungen  # doktorarbeit
do
	if [ ! -d "$projectName" ]; then
		git clone ssh://pi@bytegeist.ddnss.de:50022/home/pi/repos/${projectName}.git ${projectName}
	fi
done

# other stuff, used to be at @ geis.ddnss
for projectName in blender3d pacman \
	kooperation berufung arbeitszeugnisse buch_sigurd_carsten checklist_industrial_ai \
	2023_01_16_stammtisch_ankit_cvision studentenprojektausschreibungen \
	network_output_unequals_probability 2023_06_01_rothenburg_cvision_and_robots 2023_06_14_neuendettelsau_chancen_risiken \
	2023_07_bmt_fleximaus 2023_07_07_schacht dolphin camera_sender answer_llm
	# ownnn gitlab_korrektur
do
	if [ ! -d "$projectName" ]; then
		git clone git@${EIGEN_GITLAB}:sgeisselsoeder/${projectName}.git ${projectName}
	fi
done


GROUPNAME="demo"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
# Clone own public demo projects from github
for projectName in expectation_maximization cnn_visualization demo_computer_vision \
	demo_speech_recognition demo_feature_selection demo_input_output_sensitivity \
	makeyourownneuralnetwork demo_plotting demo_yolov8
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@github.com:sgeisselsoeder/${projectName} ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
for projectName in demo_nn
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:sgeisselsoeder/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="ccs"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in dyca dyca_intern ai_eeg_source_localization
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@github.com:HS-Ansbach-CCS/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done



GROUPNAME="fleximaus"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in bewirtschaftungserkennungv0p1 bewirtschaftungserkennung onboarding 2025_gutachten
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
for projectName in publications_fleximaus
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:sgeisselsoeder/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="wall-a"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in hardware_assembly leo_rover_repo leo_rover_cockpit leorover-rlenvirionment leo-rover-simulation lidar-navigation leo-rover-ros-noetic-docker leo-rover-2 lidar-safety ultrasonic 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="intellichair"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in ultrasonic_microcontroller high_performanc_computer movement_microcontroller  
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
for projectName in protokolle  
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/doku/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done



GROUPNAME="neuraldrones"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in carpark djistream rtmp_ai
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
projectName=drone_control_app
if [ ! -d "$projectName" ]; then
	# git clone https://github.com/b1acksheep1/drone_control_app.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	git clone git@github.com:b1acksheep1/drone_control_app.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
fi

for projectName in YOLO-Parking-Spot DJI_Cloud_API_minimal
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@github.com:sgeisselsoeder/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
# https://gitlab.com/neuraldr/neuraldrones_infrared
for projectName in neuraldrones_infrared
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@gitlab.com:neuraldr/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


GROUPNAME="heimauto"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in heimauto heimsprech website_static heimauto-monitor
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${EIGEN_GITLAB}:sgeisselsoeder/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done


# Clone siemens exdra projects, needs more credentials
GROUPNAME="siemens"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in exdra-backend exdra-infrastructure exdra-ai-container exdra-frontend
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@code.siemens.com:pd-de/exdra-plus/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
# Clone siemens willy/dolphin projects
GROUPNAME="siemens"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in common VAS03_context_search Service_LLM_keyword_search service_sentiment_analysis service_automatic_related_topics \
	service_automated_tagging service_text_mining service_data_extraction_and_preprocessing service_text_summary \
	service_automatic_note_extraction service_normalized_overlap_of_lists service_clustering DataPreparation service_free_input \
	evaluate_sentiment_analysis evaluate_context_search embeddings datafiltering WillyUi VAS_interfaces service_assigning_notes_to_hypothesis \
	WillyServer DataFiltering Embeddings service_automatic_note_extraction
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@code.siemens.com:dolphin/willy/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
# clone non-siemens exdra repos
for projectName in exdra-backend-python exdra-local-installation exdra-other
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone ssh://pi@bytegeist.ddnss.de:50022/home/pi/repos/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
projectName=aitools
if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
	git clone git@code.siemens.com:data-crafts/frameworks/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
fi

# not relevant and too big
# for projectName in cloud-native-llm # text-summary-llm
# do
# 	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
# 		git clone git@code.siemens.com:data-crafts/genai/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
# 	fi
# done

for projectName in ai4esp ai4srp # 4pcp
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@code.siemens.com:pd-de/datanalytics/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done
# for projectName in pm-acs
# do
# 	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
# 		git clone git@code.siemens.com:pd-de/pm/pm/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
# 	fi
# done


# Clone public projects from others from github, km3net gitlab
projectName=github_STT
if [ ! -d "$projectName" ]; then
	git clone https://github.com/coqui-ai/STT.git $projectName
fi
projectName=github_qntq_mairio
if [ ! -d "$projectName" ]; then
	git clone https://github.com/QntQ/Mairio.git $projectName
fi
# projectName=makeyourownneuralnetwork
# if [ ! -d "$projectName" ]; then
# 	git clone https://github.com/${projectName}/${projectName}.git $projectName
# fi
projectName=streamlit-agraph
if [ ! -d "$projectName" ]; then
	git clone https://github.com/ChrisDelClea/${projectName}.git $projectName
fi

for projectName in temp_blister
do
	if [ ! -d "${projectName}" ]; then
		git clone git@${EIGEN_GITLAB}:Korn.Robin/${projectName}.git ${projectName}
	fi
done

for projectName in myawesomeproject
do
	if [ ! -d "${projectName}" ]; then
		git clone git@${EIGEN_GITLAB}:maria/${projectName}.git ${projectName}
	fi
done



# projectName=github_cbiernoth_noximi42
# if [ ! -d "$projectName" ]; then
# 	git clone https://github.com/Noximi42/km3net.git $projectName
# fi
# projectName=github_stefreck
# if [ ! -d "$projectName" ]; then
# 	git clone https://github.com/stefreck/Km3-Autoencoder.git $projectName
# fi
# projectName=github_mmoser_viaferrata
# if [ ! -d "$projectName" ]; then
# 	git clone https://github.com/ViaFerrata/DL_pipeline_TauAppearance.git $projectName
# fi

# projectName=beluga
# if [ ! -d "$projectName" ]; then
# 	git clone http://git.km3net.de/moritz/beluga.git $projectName
# fi
# projectName=aachenairshower
# if [ ! -d "$projectName" ]; then
# 	git clone https://git.rwth-aachen.de/DavidWalz/airshower.git $projectName
# fi

# Clone fully public projects
#projectName=deep-visualization-toolbox
#if [ ! -d "$projectName" ]; then
#	git clone https://github.com/yosinski/$projectName
#fi
#projectName=caffe
#if [ ! -d "$projectName" ]; then
#	git clone https://github.com/BVLC/${projectName}.git
#fi
#projectName=keras-vis
#if [ ! -d "$projectName" ]; then
#	git clone https://github.com/raghakot/${projectName}.git
#fi
#projectName=keras-visualize-activations
#if [ ! -d "$projectName" ]; then
#	git clone https://github.com/philipperemy/${projectName}.git
#fi
#projectName=gym
#if [ ! -d "openai-${projectName}" ]; then
#	git clone https://github.com/openai/${projectName}.git openai-${projectName}
#fi
#projectName=universe
#if [ ! -d "openai-${projectName}" ]; then
#	git clone https://github.com/openai/${projectName}.git openai-${projectName}
#fi
#projectName=rechnung
#if [ ! -d "${projectName}" ]; then
#        git clone https://github.com/d-koppenhagen/latex-rechnung.git ${projectName}
#fi
#projectName=deepSpeech
#if [ ! -d "${projectName}" ]; then
#        git clone https://github.com/mozilla/DeepSpeech.git ${projectName}
#fi
#projectName=lstmMaintenance
#if [ ! -d "${projectName}" ]; then
#        git clone https://github.com/umbertogriffo/Predictive-Maintenance-using-LSTM.git ${projectName}
#fi
#projectName=lstmActivities
#if [ ! -d "${projectName}" ]; then
#        git clone https://github.com/guillaume-chevalier/LSTM-Human-Activity-Recognition.git ${projectName}
#fi
