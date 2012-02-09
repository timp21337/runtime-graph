#!/bin/sh
 
# Wrap around another script as arg1

nowTimestamp=`date -Iseconds -u`
result=`time -f "%E" 2>&1 $1`

echo $nowTimestamp,$result >>runtimes.csv

Rscript runtimes.R $1




