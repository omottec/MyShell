#!/bin/bash
for I in A B C D
do
    echo -n "$I:"
    for J in `seq 10`
        do
            if [ $J -eq 5 ]; then
                # continue
                # continue 1
                continue 2
            fi
            echo -n " $J"
        done
    echo
done
echo