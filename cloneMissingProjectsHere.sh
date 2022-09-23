#  !/bin/bash
BASEPATH=`pwd`
# clone every repo I want. 

# Clone all private projects from bytegeist.ddnss.de
# for projectName in featureTools kidsMatch onoff SGClassify sgcu swissKnifeJulia webseiteGsGrosshadern softwareEngineering \
# 	universe openclTest qtTest reviews resourceAwareMachineLearning rechnungen droneSuite ekg ledTests relais \
#	sprachkommandos siemensBewerbungTask biogas geisselsoedercom raspberryErrorLED deDup rfid_player finanzierung aktien \
#	backup-scripts doktorarbeit sprech
# 	permanently inactive: data metaproject singularityProjects checklist notizen reportkm3net2.0asterics convertKm3RootToHdf5 matrixflow
for projectName in lebenslauf bewerbungen presentations rlweitsprung exdra-backend-python pythonPDF \
	exdra-local-installation exdra-other autoencoderensemble hausmodel ubuntu-default-software onintelcoop \
	vorlesung_uebersicht vorlesung_programmieren1 vorlesung_ki1 glab_verwalten studentenprojektausschreibungen doktorarbeit
do
	if [ ! -d "$projectName" ]; then
		git clone ssh://pi@bytegeist.ddnss.de:50022/home/pi/repos/${projectName}.git ${projectName}
	fi
done

# Clone own public projects from github
for projectName in dockerProjects multiscale spielDerNeuronen metaproject erkenntnis expectation_maximization cnn_visualization demo_computer_vision demo_speech_recognition demo_feature_selection demo_input_output_sensitivity makeyourownneuralnetwork demo_plotting  # km3netHdf5ToHistograms
do
	if [ ! -d "$projectName" ]; then
		git clone git@github.com:sgeisselsoeder/${projectName} ${projectName}
	fi
done

# clone teaching projects
git clone git@geis.ddnss.de:wise21_ki1/aufgabe1.git wise21_ki1_a1
git clone git@geis.ddnss.de:wise21_ki1/ki-aufgabe-2.git wise21_ki1_a2
git clone git@geis.ddnss.de:sgeisselsoeder/ki-aufgabe-3-loesung.git wise21_ki1_a3_loesung
git clone git@geis.ddnss.de:wise21_ki1/ki-aufgabe-3.git wise21_ki1_a3
git clone git@geis.ddnss.de:wise21_programmieren1/aufgabe1.git wise21_p1_a1
git clone git@geis.ddnss.de:wise21_programmieren1/aufgabe2.git wise21_p1_a2
git clone git@geis.ddnss.de:wise21_programmieren1/programmierena3.git wise21_p1_a3
git clone git@geis.ddnss.de:wise21_programmieren1/programmieren-A4.git wise21_p1_a4
# git clone git@geis.ddnss.de:sgeisselsoeder/programmieren-A5.git wise21_p1_a5_loesung

for projectName in blender3d pacman wise21_p1_a2.5_loesung kigraph heimauto heimsprech kooperation
do
	if [ ! -d "$projectName" ]; then
		git clone git@geis.ddnss.de:sgeisselsoeder/${projectName}.git ${projectName}
	fi
done

for projectName in wise21_p1_a5_loesung wise21_p1_a6_loesung wise21_p1_a7_loesung wise21_p1_a8_loesung wise21_ki1_a4_loesung wise21_ki1_a5_loesung wise21_ki1_a6_loesung wise21_ki1_a7_loesung wise21_p1_a5 wise21_p1_a6 wise21_p1_a7 wise21_p1_a8 wise21_ki1_a4 wise21_ki1_a5 wise21_ki1_a6 wise21_ki1_a7 wise21_p1_klausur wise21_ki1_klausur wise21_ki1_probeklausur wise21_p1_probeklausur wise21_ki1_klausuraufgaben wise21_ki1_klausurloesung wise21_p1_klausuraufgaben wise21_p1_klausurloesung wise21_p1_klausur gitlab_management 2022_sose_ki2_vorlesung 2022_sose_biolern_vorlesung gitlab_korrektur 2022_sose_ki2_a1_loesung 2022_sose_ki2_a2_loesung demo_nn 2022_sose_p1_klausur 2022_sose_ki1_klausur 2022_sose_p1_klausuraufgaben 2022_sose_p1_klausur_vorbenotung buch_sigurd_carsten website_static ownnn
do
	if [ ! -d "$projectName" ]; then
		git clone git@git-kik.hs-ansbach.de:sgeisselsoeder/${projectName}.git ${projectName}
	fi
done

# for projectName in 2022_sose_ki2_vorlesung 2022_sose_biolern_vorlesung gitlab_korrektur 2022_sose_ki2_a1_loesung 2022_sose_ki2_a2_loesung 2022_sose_ki2_a3_loesung
for projectName in 2022_sose_ki2_a3_loesung 2022_sose_ki2_a3 2022_sose_ki2_a4_loesung 2022_sose_ki2_a4 2022_sose_ki2_a5_loesung 2022_sose_ki2_a5 2022_sose_ki2_klausuraufgaben 2022_sose_ki2_klausur 2022_sose_ki2_korrektur_klausur
do
	if [ ! -d "$projectName" ]; then
		git clone git@git-kik.hs-ansbach.de:2022_sose_ki2_material/${projectName}.git ${projectName}
	fi
done

for projectName in 2021_wise_p1_vorlesung
do
	if [ ! -d "$projectName" ]; then
		git clone git@git-kik.hs-ansbach.de:2021_wise_p1_material/${projectName}.git ${projectName}
	fi
done

for projectName in 2022_wise_ki3_vorlesung
do
	if [ ! -d "$projectName" ]; then
		git clone git@git-kik.hs-ansbach.de:2022_wise_ki3_material/${projectName}.git ${projectName}
	fi
done



projectName=2022_sose_ki2_data
if [ ! -d "$projectName" ]; then
	git clone git@git-kik.hs-ansbach.de:2022_sose_ki2/${projectName}.git ${projectName}
fi


# Clone restricted projects, needs more credentials
for projectName in exdra-backend exdra-infrastructure exdra-ai-container exdra-frontend
do
	if [ ! -d "$projectName" ]; then
		git clone git@code.siemens.com:pd-de/exdra-plus/${projectName}.git ${projectName}
	fi
done
# for projectName in 4esp 4srp # 4pcp
# do
# 	if [ ! -d "$projectName" ]; then
# 		git clone git@code.siemens.com:pd-de/datanalytics/ai${projectName}.git ${projectName}
# 	fi
# done
projectName=aitools
if [ ! -d "$projectName" ]; then
	git clone git@code.siemens.com:data-crafts/frameworks/${projectName}.git ${projectName}
fi
# for projectName in pm-acs
# do
# 	if [ ! -d "$projectName" ]; then
# 		git clone git@code.siemens.com:pd-de/pm/pm/${projectName}.git ${projectName}
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
projectName=makeyourownneuralnetwork
if [ ! -d "$projectName" ]; then
	git clone https://github.com/${projectName}/${projectName}.git $projectName
fi


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





