#!/bin/bash
while read LINE
do
    NAME=`echo $LINE | awk '{print $1}'`
    AGE=`echo $LINE | awk '{print $2}'`
    SEX=`echo $LINE | awk '{print $3}'`
    echo "My name is $NAME, I'm $AGE years old, I'm a $SEX"
done < student_info.txt