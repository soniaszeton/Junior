#!/bin/bash
# Sonia Szeton
filename=$1

# Check command line arguments
if [ "$filename" = "" ]; then
    echo "Usage: $0 filename"
    exit -1
fi

# read in the file, sort the names alphebetically, and calculate their average score and print out formatted results
cat $filename | sort -k3,3 -k2,2 | while read id fn ln s1 s2 s3
do
    average=$((s1+s2+s3))
    average=$((average/3))
    printf "%2d [%s] %s, %s\n" "$average" "$id" "$ln" "$fn"
done 
