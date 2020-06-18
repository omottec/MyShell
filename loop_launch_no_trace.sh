#!/bin/bash
for count in {1..50} #测试次数建议最少50次
do
    echo "loop $count time"

    adb shell am start -n "com.ss.android.lark.debug/com.ss.android.lark.main.app.MainActivity" -a android.intent.action.MAIN -c android.intent.category.LAUNCHER
    
    sleep 10 #启动后休眠10s，可根据机器配置调整，确保能成功上报冷启时间就行（10s内完成首屏渲染）

    adb shell am force-stop com.ss.android.lark.debug
    
    sleep 5 #杀进程后休眠5s然后再次启动

done