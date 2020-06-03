#!/bin/bash
declare N

echo "12 bottles of beer in a box"
# echo -n "How many box do you want:"
# read N

read -p "Hello many box do you want:" N

echo "$((N*12)) bottle in total"