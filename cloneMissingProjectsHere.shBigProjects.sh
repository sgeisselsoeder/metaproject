#  !/bin/bash
BASEPATH=`pwd`
# clone every repo I want.


GITLAB_COM="gitlab.com"
GITLAB_HS="git-kik.hs-ansbach.de"
EIGEN_GITLAB=${GITLAB_HS}  # eigen Gitlab is no more
GITGROUPTAG="_projects"


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


GROUPNAME="wall-a"
mkdir -p ${GROUPNAME}${GITGROUPTAG}
for projectName in hardware_assembly leo_rover_repo leo_rover_cockpit leorover-rlenvirionment leo-rover-simulation lidar-navigation leo-rover-ros-noetic-docker leo-rover-2 lidar-safety ultrasonic 
do
	if [ ! -d "${GROUPNAME}${GITGROUPTAG}/${projectName}" ]; then
		git clone git@${GITLAB_HS}:${GROUPNAME}/${projectName}.git ${GROUPNAME}${GITGROUPTAG}/${projectName}
	fi
done

