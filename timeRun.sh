#!/bin/bash

# Wrap around another script as arg1

nowTimestamp=`date -Iseconds -u`

#result=`time -f "%E" 2>&1 $1`
startTimestamp=$(($(date +%s%N)))
`$1`
endTimestamp=$(($(date +%s%N)))
result=$((($endTimestamp - $startTimestamp)/1000000))
echo $nowTimestamp,$result >>runtimes.csv

Rscript runtimes.R $1
