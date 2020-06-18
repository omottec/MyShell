#!/bin/bash
filename="trace_"
suffix=".html"

for count in {1..10}
do
	time="`date +%Y-%m-%d-%H:%M:%S`"
	echo "#########################"
	echo "loop $count time"
	echo "#####start systrace######"
	echo $time
	echo "#########################"
	python systrace.py -t 10 -a com.ss.android.lark.debug -o $filename$time$suffix &
	sleep 3 

	echo "#####start launcher app######"
    adb shell am start -n "com.ss.android.lark.debug/com.ss.android.lark.main.app.MainActivity" -a android.intent.action.MAIN -c android.intent.category.LAUNCHER
    
    sleep 15

	echo "#####kill app######"
    adb shell am force-stop com.ss.android.lark.debug
    
    sleep 5
done

