#!/bin/bash
for count in {1..10}
do
adb shell input text "test1-msg$count"
adb shell input tap 1000 1300
if [ 1 -eq "$count" ] ; then
    time=$(date "+%Y-%m-%d-%H:%M:%S")
    echo "$count $time"
fi
if [ 10 -eq "$count" ] ; then
    time=$(date "+%Y-%m-%d-%H:%M:%S")
    echo "$count $time"
fi
done