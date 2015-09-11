#!/bin/bash
# Sonia Szeton
filename=$1

# Check command line arguments
if [ "$filename" = "" ]; then
    echo "Usage: $0 filename"
    exit -1
fi

# sorting the data alphabetically, finding the average score of each person and formatting the results
cat $filename | sort -k3,3 -k2,2 | awk '{OFS="";} {printf "%2d [%s] %s, %s\n", ($4+$5+$6)/3, $1, $3, $2}'
