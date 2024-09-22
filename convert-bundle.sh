#!/bin/bash

curl https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz > lab3-bundle.tar.gz

tar -xzvf lab3-bundle.tar.gz

cat lab3_data.tsv | tr -s '\n' > nospace_lab3_data.tsv

tr '\t' ',' < nospace_lab3_data.tsv > nospace_lab3_data.csv

NUM_LINES=$(wc -l < nospace_lab3_data.csv)
TOTAL=$((NUM_LINES-1))
echo "$TOTAL"

tar -czvf new_archive.tar.qz nospace_lab3_data.csv
