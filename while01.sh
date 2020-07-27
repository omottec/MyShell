#!/bin/bash
COUNT=5
while [[ $COUNT -gt 0 ]]
do
    echo -n "$COUNT "
    let "COUNT -= 1"
done