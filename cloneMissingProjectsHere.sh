#!/bin/bash
BASEPATH=`pwd`
# clone every repo I want. Muhaha!

# Clone all private projects from pi4060
for projectName in doktorarbeit featureTools kidsMatch matrixflow notizen onoff reportkm3net2.0asterics SGClassify sgcu swissKnifeJulia lebenslauf convertKm3RootToHdf5 webseiteGsGrosshadern softwareEngineering universe openclTest qtTest reviews bibliothek checklist singularityProjects bewerbungen resourceAwareMachineLearning rechnungen presentations data droneSuite ekg ledTests relais sprachkommandos siemensBewerbungTask biogas geisselsoedercom raspberryErrorLED
do
	if [ ! -d "$projectName" ]; then
		git clone sgeisselsoeder@pi4060.physik.uni-erlangen.de:/home/sgeisselsoeder/repos/${projectName}.git ${projectName} 
	fi
done

# Clone all own public projects from github
for projectName in dockerProjects km3netHdf5ToHistograms multiscale spielDerNeuronen metaproject
do
	if [ ! -d "$projectName" ]; then
		git clone git@github.com:sgeisselsoeder/${projectName} ${projectName} 
	fi
done

# Clone public projects from others from github, km3net gitlab
projectName=github_cbiernoth_noximi42
if [ ! -d "$projectName" ]; then
	git clone https://github.com/Noximi42/km3net.git $projectName
fi
projectName=github_stefreck
if [ ! -d "$projectName" ]; then
	git clone https://github.com/stefreck/Km3-Autoencoder.git $projectName
fi

projectName=github_mmoser_viaferrata
if [ ! -d "$projectName" ]; then
	git clone https://github.com/ViaFerrata/DL_pipeline_TauAppearance.git $projectName
fi
projectName=beluga
if [ ! -d "$projectName" ]; then
	git clone http://git.km3net.de/moritz/beluga.git $projectName
fi
projectName=airshower
if [ ! -d "$projectName" ]; then
	git clone https://git.rwth-aachen.de/DavidWalz/airshower.git $projectName
fi

# Clone fully public projects
projectName=deep-visualization-toolbox 
if [ ! -d "$projectName" ]; then
	git clone https://github.com/yosinski/$projectName
fi
projectName=caffe 
if [ ! -d "$projectName" ]; then
	git clone https://github.com/BVLC/${projectName}.git
fi
projectName=keras-vis
if [ ! -d "$projectName" ]; then
	git clone https://github.com/raghakot/${projectName}.git
fi
projectName=keras-visualize-activations
if [ ! -d "$projectName" ]; then
	git clone https://github.com/philipperemy/${projectName}.git
fi
projectName=gym
if [ ! -d "openai-${projectName}" ]; then
	git clone https://github.com/openai/${projectName}.git openai-${projectName}
fi
projectName=universe
if [ ! -d "openai-${projectName}" ]; then
	git clone https://github.com/openai/${projectName}.git openai-${projectName}
fi
#projectName=rechnung
#if [ ! -d "${projectName}" ]; then
#        git clone https://github.com/d-koppenhagen/latex-rechnung.git ${projectName}
#fi
projectName=deepSpeech
if [ ! -d "${projectName}" ]; then
        git clone https://github.com/mozilla/DeepSpeech.git ${projectName}
fi
projectName=lstmMaintenance
if [ ! -d "${projectName}" ]; then
        git clone https://github.com/umbertogriffo/Predictive-Maintenance-using-LSTM.git ${projectName}
fi
projectName=lstmActivities
if [ ! -d "${projectName}" ]; then
        git clone https://github.com/guillaume-chevalier/LSTM-Human-Activity-Recognition.git ${projectName}
fi





