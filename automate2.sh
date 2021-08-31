#!/bin/bash
#set -ex

read FILE
read TEXT

echo $TEXT >> $FILE

#git add .
git commit -am "automate2.sh adding \`$TEXT\` to $FILE"

#git pull-request

