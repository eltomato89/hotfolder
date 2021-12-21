#!/bin/bash
echo "Watching Hotfolder, delay set to ${DELAY} seconds."

inotifywait -m /opt/app/hotfolder -e create -e moved_to |
    while read directory action file; do
        if [[ "$file" =~ ${FILTER} ]]; then
            ./process.sh "$directory""$file" &
        fi
    done