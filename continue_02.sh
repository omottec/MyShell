#!/bin/bash
for ((i=1; i<=10; i++))
do
    echo "loop i=$i"
    for((j=2; j<i; j++))
    do
        echo "   loop j=$j "
        if !(($i%$j)); then 
            continue 2
        fi
    done
    echo "result $i"
done