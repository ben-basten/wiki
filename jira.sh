#!/bin/bash

# Replaces matching story numbers in specified file(s) with a markdown link to Jira

for i in "$@"
do
  # NOTE: Replace "KEY" with your Jira project key
  perl -pi -e 's/(?<!\[)(KEY-(\d){1,5})(?![\)\d])/[$1](https:\/\/mycompany.atlassian.net\/browse\/$1)/g' $i
done