#!/bin/bash

# Script to download COVID-19 CSV data, extract rows with Nepal Data to minimize file size of CSV
# Run this script daily with cronjob

wget https://covid.ourworldindata.org/data/owid-covid-data.csv 

xsv search NPL ./owid-covid-data.csv >> data.csv

rm ./owid-covid-data.csv 

# git commit -m "update data at $(date)"

# git push -u origin master 
