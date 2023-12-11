#!/bin/bash

echo "MAKING DAILY ENTRY"

DATE=$(date +%Y-%m-%d)
WEEKLYDIRECTORY="docs/daily/week-of_${DATE}"

TODAY=$(date)
if [[ $TODAY == Mon* ]] && [ ! -d ${WEEKLYDIRECTORY} ]; then
    mkdir $WEEKLYDIRECTORY
    echo $WEEKLYDIRECTORY dir created
fi

ACTIVEWEEK=$(ls -l docs/daily | tail -1 | awk '{ print $10 }')
FILENAME="docs/daily/${ACTIVEWEEK}/${DATE}-todo.md"

if [ ! -f ${FILENAME} ]; then
    # make new daily entry
    cp templates/daily-template.md ${FILENAME}
    # add header to daily entry
    sed -i '' "1s/^/# ${DATE} TODO \n/" ${FILENAME}
    echo $FILENAME created.
fi

# open in vscode editor
code $FILENAME