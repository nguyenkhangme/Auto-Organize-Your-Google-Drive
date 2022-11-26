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

mkdir -p gdoc
mkdir -p gform
mkdir -p gsheet 
mkdir -p gslides 
mkdir -p docx 
mkdir -p pdf 
mkdir -p photos
mkdir -p videos 

mv *.gdoc ./gdoc
mv *.gform ./gform
mv *.gsheet ./gsheet
mv *.gslides ./gslides

mv *.docx ./docx
mv *.doc ./docx

mv *.pdf ./pdf

mv *.jpg ./photos
mv *.png ./photos
mv *.JPG ./photos
mv *.PNG ./photos

mv *.mp4 ./videos
mv *.MOV ./videos

