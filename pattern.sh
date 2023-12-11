#!/bin/bash

# replace spaces with hyphens, make it lowercase
filename=$(echo $1 | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

cp templates/pattern.md docs/patterns/${filename}.md

# replace the first line of the file with the pattern name
sed -i '' "1s/.*/# $1/" docs/patterns/${filename}.md

code docs/patterns/${filename}.md