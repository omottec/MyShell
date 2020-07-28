#!/bin/bash
function power(){
    RESULT=1
    LOOP=0
    while [[ "$LOOP" -lt $2 ]]
    do
        let "RESULT*=$1"
        let LOOP++
    done
    echo $RESULT
}
echo "Call function power with parameters"
power $1 $2