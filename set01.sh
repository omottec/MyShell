#!/bin/bash
# set 1 2 3 4 5 6
COUNT=1
for i in $@
do
    echo "Here \$$COUNT is $i"
    let "COUNT++"
done