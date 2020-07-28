#!/bin/bash
FILE=/etc/passwd

function countLine(){
    local i=0
    while read line
    do
        let ++i
    done < $FILE
    echo "$FILE have $i lines"
}

echo "Call function countLine"
countLine