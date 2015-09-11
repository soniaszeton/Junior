#!/bin/bash
# Sonia Szeton
filename=$1

# Check command line arguments
if [ "$filename" = "" ]; then
    echo "Usage: $0 filename"
    exit -1
fi

# Question 1

grep -c '[AaEeIiOoUu]$' $filename

# Question 2

egrep -vc '^[AaEeIiOoUu]' $filename

# Question 3

#egrep '[A-Za-z]'{12} $filename | egrep -vc '[0-9@./_]' $filename
egrep -c ^[A-Za-z]\{12\}$ $filename 

# Question 4

egrep -c [0-9]{3}-[0-9]{3}-[0-9]{4} $filename

# Question 5

egrep -c 303-[0-9]{3}-[0-9]{4} $filename

# Question 6

egrep -c ^[AaEeIiOoUu].*[0-9]$ $filename

# Question 7

egrep -c geocities[.]com$ $filename 

# Question 8

egrep -c [A-Za-z0-9._][.][a-z] $filename
