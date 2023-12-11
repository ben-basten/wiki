#!/bin/bash

# replace spaces with hyphens, make it lowercase
filename=$(echo $1 | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
full_path=docs/patterns/${filename}.md

cp templates/pattern.md ${full_path}

# replace the first line of the file with the pattern name
sed -i.bak "1s/.*/# $1/" ${full_path}
# For backwards compatibility between GNU and BSD version of sed
rm ${full_path}.bak

code docs/patterns/${filename}.md