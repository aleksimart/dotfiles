#!/bin/bash

read -p "Lecture Number: " number

pdf=".*.pdf$"
tex=".*.tex$"
org=".*.org$"

for i in *
do
   if [[ $i =~ $pdf ]];
   then
      mv "$i" "lec$number.pdf"
   elif [[ $i =~ $tex ]]; then
      mv "$i" "lec$number.tex"
   elif [[ $i =~ $org ]]; then
      mv "$i" "lec$number.org"
   fi 
done

# for i in *.tex
# do
#    mv "$i" "lec$number.tex"
# done

# for i in *.org
# do
#    mv "$i" "lec$number.org"
# done
