#!/bin/bash
INPUT_FILE=$1
pandoc -o content.html $INPUT_FILE
cat ../templates/header.template content.html ../templates/footer.template > ../pages/${INPUT_FILE::-2}html
rm content.html
