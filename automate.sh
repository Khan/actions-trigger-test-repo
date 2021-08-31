#!/bin/bash
#set -ex

read LINE_NO
TIME=$(date +%H:%M:%S)
SEC=$(date +%S)
echo "$TIME"
CURRENT_LINE=1
ADDED=false

LOREM=(lorem ipsum dolor sit amet consectetur adipiscing elit eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ea commodo consequat duis aute irure dolor reprehenderit voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt culpa qui officia deserunt mollit anim est laborum)

#sed -i -e "$LINE_NOi\
#$TIME" myFile.txt
nl="
"
sed -i -e "${LINE_NO}s/^/${TIME} ${LOREM[SEC]} ${LOREM[SEC+1]}NL/g" myFile.txt
sed -i -e 's/NL/\
/g' myFile.txt


#while IFS= read -r line
#do
#  echo $line >> myFile.txt
#  
#  if [[ $CURRENT_LINE == $LINE_NO ]] ; then
#    
#    echo $TIME >> myFile.txt
#    ADDED=true
#  fi
#  
#  CURRENT_LINE = $CURRENT_LINE + 1
#  
#done < myFile.txt
#
#if [[ $ADDED == false ]] ; then
#    echo $TIME >> myFile.txt
#fi
#
##echo stuff >> $fileA
##echo $textA >> $fileA
##echo stuff >> $fileA
##
##read fileB
##read textB
##
##echo stuff >> $fileB
##echo $textB >> $fileB
##echo stuff >> $fileB
#
##git add .
#git commit -am 'automate.sh adding $TIME to line $LINE'
#
##git pull-request

