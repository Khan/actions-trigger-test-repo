#!/bin/bash
set -ex

read fileA
read textA

echo $textA >> $fileA

#git add .
git commit -am "automate1.sh adding \`$textA\` to $fileA"

#git pull-request

