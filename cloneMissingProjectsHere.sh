#!/bin/bash
BASEPATH=`pwd`
# clone every repo I want. Muhaha!

# Clone all private projects from bytegeist.ddnss.de
# for projectName in featureTools kidsMatch onoff SGClassify sgcu swissKnifeJulia webseiteGsGrosshadern softwareEngineering \
# 	universe openclTest qtTest reviews resourceAwareMachineLearning rechnungen droneSuite ekg ledTests relais \
#	sprachkommandos siemensBewerbungTask biogas geisselsoedercom raspberryErrorLED deDup rfid_player finanzierung aktien \
#	backup-scripts doktorarbeit sprech
# 	permanently inactive: data metaproject singularityProjects checklist notizen reportkm3net2.0asterics convertKm3RootToHdf5 matrixflow
for projectName in lebenslauf bewerbungen presentations rlweitsprung exdra-backend-python pythonPDF \
	exdra-local-installation exdra-other autoencoderensemble hausmodel erkenntnis ubuntu-default-software \
	vorlesung_uebersicht vorlesung_programmieren1 vorlesung_ki1 glab_verwalten studentenprojektausschreibungen doktorarbeit
do
	if [ ! -d "$projectName" ]; then
		git clone ssh://pi@bytegeist.ddnss.de:50022/home/pi/repos/${projectName}.git ${projectName}
	fi
done

# Clone all own public projects from github
for projectName in dockerProjects multiscale spielDerNeuronen metaproject expectation_maximization cnn_visualization # km3netHdf5ToHistograms
do
	if [ ! -d "$projectName" ]; then
		git clone git@github.com:sgeisselsoeder/${projectName} ${projectName}
	fi
done

# clone teaching projects
git clone git@geis.ddnss.de:sgeisselsoeder/ki-aufgabe-3-loesung.git wise21_ki_a3_loesung
git clone git@geis.ddnss.de:wise21_ki1/ki-aufgabe-3.git wise21_ki_a3

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





