#!/bin/bash
BASEPATH=`pwd`
MY_TIMEOUT_IN_S=12
GITGROUPTAG="_projects"

# update everything that didn't flee fast enough
for i in `ls | grep -v -e "$(basename $0)" -e "\.log" -e "\.git" -e "\.txt" -e "\.sh" -e "\.tar.gz" -e ${GITGROUPTAG} ` ;
do
cd $i
echo "### Updating next: " $i
git pull | grep -v -e "Already" -e "Bereits"
# timeout $MY_TIMEOUT_IN_S git pull
cd $BASEPATH
done

# special treatment for project groups with no internal git-based linkage
for j in *${GITGROUPTAG};
do
cd $j
BASEPATH2=`pwd`
echo "### Updating Group " $j
	for i in `ls | grep -v -e "$(basename $0)" -e "\.log" -e "\.git" -e "\.txt" -e "\.sh" -e "\.tar.gz" ` ;
	do
	cd $i
	# echo "### Updating next: " $i
	git pull | grep -v -e "Already" -e "Bereits"
	# timeout $MY_TIMEOUT_IN_S git pull
	cd $BASEPATH2
	done
cd $BASEPATH
done


echo "Updating the cloneMissing, updateAll and statusAll scripts in the main projects folder with the content of metaproject"
cp metaproject/updateAll.sh .
# echo "1"
# cp metaproject/statusAll.sh .
# echo "2"
cp metaproject/cloneMissingProjectsHere.sh .
# echo "3"
cp metaproject/statusAll.sh .
echo "Done copying new scripts to project folder"

echo "Checking for missing projects"
# source ./cloneMissingProjectsHere.sh
bash ./cloneMissingProjectsHere.sh

echo "Updating bash aliases"
cp metaproject/dotbash_aliases ~/.bash_aliases
cp metaproject/dotbash_aliases ~/.alias
