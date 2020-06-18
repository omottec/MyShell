#!/bin/bash
for count in {1..3000}
do
adb shell input text "test2-msg$count"
adb shell input tap 1000 1260
if [ 1 -eq "$count" ] ; then
    time=$(date "+%Y-%m-%d-%H:%M:%S")
    echo "$count $time"
fi
if [ 3000 -eq "$count" ] ; then
    time=$(date "+%Y-%m-%d-%H:%M:%S")
    echo "$count $time"
fi
done