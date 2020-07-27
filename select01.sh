#!/bin/bash
echo "Which car do you prefer?"
select CAR in Benz Audi VolksWagen
do
    echo "loop"
    # break
done
echo "You chose $CAR"