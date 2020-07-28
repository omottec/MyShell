#!/bin/bash
until [ $# -eq 0 ]
do
    echo "Now \$1 is $1, total param is:$#"
    shift 2
done