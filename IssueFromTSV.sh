#!/bin/bash

# reads a tab separated file and creates issues in GitHub

# read file input from user
read -p "Enter file name: " file

while IFS=$'\t' read -r title body _; do
  gh issue create --title "title" --body "$body"
done < $file

