#!/bin/bash

# script to replace all instances of this regex (?<!\[)(KEY-(\d){4,5})(?!\)) with [$0](https://mycompany.atlassian.net/browse/$0) in file passed as argument
# Replace "KEY" with your Jira project key

# update script to run perl command for all arguments passed to script
for i in "$@"
do
  perl -pi -e 's/(?<!\[)(KEY-(\d){4,5})(?!\))/[$1](https:\/\/mycompany.atlassian.net\/browse\/$1)/g' $i
done