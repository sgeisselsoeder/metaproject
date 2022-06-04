#!/bin/bash
BASEPATH=`pwd`
for i in `ls | grep -v -e "$(basename $0)" -e "\.log" -e "\.git" -e "\.txt" -e "\.sh" -e "\.tar.gz" ` ; 
do 
cd $i 
projectStatus=`git status | grep -v -e "On branch " -e "Auf Branch " -e "nothing to commit" -e "nichts zu committen" -e "auf demselben Stand" -e "branch is up-to-date" -e "branch is up to date" 2>&1 `
if [ ! -z "$projectStatus" ];
then
	echo "### Status of " $i : 
	# echo $projectStatus # better to do a new git status to get the full information on projects with some info
	git status | grep -v -e "On branch " -e "Auf Branch " -e "nothing to commit" -e "nichts zu committen" -e "branch is up-to-date" -e "auf demselben Stand"  -e "brach is up to date"
fi
#|| svn status | grep -v -e .tex.backup -e .bib.backup -e .aux -e .bbl -e .blg -e .log -e .out -e .spl`
cd $BASEPATH
done
