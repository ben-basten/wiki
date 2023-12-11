#!/bin/bash

DATE=$(date +%Y-%m-%d)
WEEKLYDIRECTORY="docs/daily/week-of_${DATE}"

TODAY=$(date)
if [[ $TODAY == Mon* ]] && [ ! -d ${WEEKLYDIRECTORY} ]; then
    mkdir $WEEKLYDIRECTORY
    echo $WEEKLYDIRECTORY dir created.
fi

ACTIVEWEEK=$(ls -1A docs/daily | tail -1)
FILENAME=${DATE}-todo.md
FILE_PATH="docs/daily/${ACTIVEWEEK}/${FILENAME}"

if [ ! -f ${FILE_PATH} ]; then
    # make new daily entry
    cp templates/daily-template.md ${FILE_PATH}
    echo $FILE_PATH file created.
    # add header to daily entry
    sed -i.bak "1s/^/# ${DATE} TODO \n/" ${FILE_PATH}
    # For backwards compatibility between GNU and BSD version of sed
    rm ${FILE_PATH}.bak
    echo Opening new daily entry: $FILENAME
else
    echo Opening existing daily entry: $FILENAME
fi

# open in vscode editor
code $FILE_PATH