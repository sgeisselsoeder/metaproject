#!/bin/bash
BASEPATH=`pwd`
for i in `ls | grep -v -e "$(basename $0)" -e "\.log" -e "\.git" -e "\.txt" -e "\.sh" -e "\.tar.gz" ` ; 
do 
cd $i 
projectStatus=`git status | grep -v -e "On branch " -e "Auf Branch " -e "nothing to commit, working " -e "nichts zu committen, Arbeitsverzeichnis unverändert" -e "Your branch is up-to-date with 'origin/master'" -e "Ihr Branch ist auf dem selben Stand wie 'origin/master'" -e "Your branch is up-to-date with 'yosinski/deconv-deep-vis-toolbox" 2>&1 `
if [ ! -z "$projectStatus" ];
then

echo "### Status of " $i : 
# echo $projectStatus # better to do a new git status to get the full information on projects with some info
git status 
fi
#|| svn status | grep -v -e .tex.backup -e .bib.backup -e .aux -e .bbl -e .blg -e .log -e .out -e .spl`
cd $BASEPATH
done
