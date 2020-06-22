#!/bin/bash
for count in {1..300}
do
# curl "https://sc.ftqq.com/SCU102387T3e36ebb35f0d7df3bb3fa99128431ddd5eef7ca198a61.send\?text\=test1online"
# curl "https://pushbear.ftqq.com/sub?sendkey=18824-37226950ac81efa51e92585be4a0e517&text=test2online2"
curl "http://wxpusher.zjiecode.com/api/send/message/?appToken=AT_uKXKq56e6GGZRK5c5mGTXNjxuBDvj19L&content=pusher3test8online$count&uid=UID_SbrrStuX12A9Qh1at1fyzBn0MGpA&url=http%3a%2f%2fwxpusher.zjiecode.com"
if [ 1 -eq "$count" ] ; then
    time=$(date "+%Y-%m-%d-%H:%M:%S")
    echo -e "$0 $count $time\n" >> time.txt
fi
if [ 300 -eq "$count" ] ; then
    time=$(date "+%Y-%m-%d-%H:%M:%S")
    echo -e "$0 $count $time\n" >> time.txt
fi
done