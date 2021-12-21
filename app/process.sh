#!/bin/bash

echo "Got new file: ${1}, waiting ${DELAY} seconds ..."
sleep ${DELAY}
file="$1"
lastUpdate=`stat -c %Z "$1"`
currentDate=`date +%s`
fileAge=$((currentDate-lastUpdate))

#echo "xml file: $1, diff: $fileAge"

./handler.sh $file