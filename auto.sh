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

moveFilesUsingName(){
    declare -a toMove
    name="$1"
    echo "name to find: $name"
    folder_name="$2"
    echo "move to folder: $folder_name"

    cd "$driveDirectory/gdoc"
    mkdir -p "$folder_name"

    find . -type f | grep -i "$name" > listFile.txt

    while read -r file
    do
        toMove+=("$file")
    done < "listFile.txt"

    for ((i = 0; i < ${#toMove[@]}; i++))
    do
        # uncomment 2 lines below and comment line76 if you want to search first
        # echo "${toMove[$i]}"
        # echo "---"
        mv "${toMove[$i]}" ./"$folder_name"
    done
}

moveFilesUsingName "Untitled" "Untitled"
moveFilesUsingName "Assignment" "Assignments"
# moveFilesUsingName "đồ án" "Assignments"



