#!/bin/bash
sed 's/"N\r/\\N\r/g' $1.csv | sed 's/"N;/\\N;/g' > $1_nulls.csv
