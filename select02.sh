#!/bin/bash
select DAY in Mon Tue Wed Thu Fri Sat Sun
do
    case $DAY in
    Mon) echo "Tody is Monday";;
    Tue) echo "Tody is Tuesday";;
    Wed) echo "Tody is Wednesday";;
    Thu) echo "Tody is Thursday";;
    Fri) echo "Tody is Friday";;
    Sat|Sun) echo "You can have a rest today";;
    *) echo "Unknown input,exit now" && break ;;
    esac
done