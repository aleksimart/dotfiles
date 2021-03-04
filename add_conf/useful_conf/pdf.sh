#!/bin/bash

read -p "Name of the file: " filename
read -p "Regex to search the files with: " regex
# read -p "address to the area with files from home: " src
read -p "Destination folder name: " dest

# echo "Creating the file $filename.pdf..."
# touch "$filename.pdf"

echo "Creating the folder $dest for the document..."
mkdir $dest

echo "Searching $HOME/$src for files..."

for i in $(find . -regex "$regex") 
do
    echo "Found file $i"
    echo "Copying the file to $dest..."
    cp $i "./$dest" 
    echo "Successfully copied!"
done 

# TODO: Need to make sure that the files are combine in order

# echo "Starting to combine all the files in one..."
# cd $dest
# find . -name "*.pdf"|sort -n| xargs -0 gs -dQUIET -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$filename.pdf"

# echo "Deleting the combined files..."
# find . -type f ! -name "$filename.pdf" -delete
# echo "Done!"
