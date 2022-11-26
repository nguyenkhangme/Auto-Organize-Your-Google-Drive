#!/bin/bash

if [[ $# != 1 ]]
then
  echo "auto.sh directory_name"
  exit
fi

if [[ ! -d $1 ]]
then
  echo "Invalid directory path provided: $1"
  exit
fi

driveDirectory=$1

cd "$driveDirectory"

# create folders if they do not exist

mkdir -p gdoc
mkdir -p gform
mkdir -p gsheet 
mkdir -p gslides 
mkdir -p docx 
mkdir -p pdf 
mkdir -p photos
mkdir -p videos 

# move Google files to the corresponding folders

mv *.gdoc ./gdoc
mv *.gform ./gform
mv *.gsheet ./gsheet
mv *.gslides ./gslides

# move other files to the corresponding folders

mv *.docx ./docx
mv *.doc ./docx

mv *.pdf ./pdf

mv *.jpg ./photos
mv *.png ./photos
mv *.JPG ./photos
mv *.PNG ./photos

mv *.mp4 ./videos
mv *.MOV ./videos

# move files using name:  Untitled

declare -a toMove

cd gdoc

find . -type f | grep -i "Untitled" > listUntitledFile.txt

while read -r file
do
    toMove+=("$file")
done < "listUntitledFile.txt"

for ((i = 0; i < ${#toMove[@]}; i++))
do
    mv "${toMove[$i]}" ./Untitled
done


