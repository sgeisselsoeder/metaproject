#!/bin/bash
BASEPATH=`pwd`
MY_TIMEOUT_IN_S=10

# update everything that didn't flee fast enough
for i in `ls | grep -v -e "$(basename $0)" -e "\.log" -e "\.git" -e "\.txt" -e "\.sh" -e "\.tar.gz" -e "inactive" ` ;
do
cd $i
echo "### Updating next: " $i
# git pull | grep -v -e "Already up-to-date" -e "Bereits aktuell" -e "Already up to date"
timeout $MY_TIMEOUT_IN_S git pull
cd $BASEPATH
done

echo "Updating the cloneMissing, updateAll and statusAll scripts in the main projects folder with the content of metaproject."
cp metaproject/*.sh .

echo "Checking for missing projects"
source ./cloneMissingProjectsHere.sh

echo "Updating bash aliases"
cp metaproject/dotbash_aliases ~/.bash_aliases
cp metaproject/dotbash_aliases ~/.alias

