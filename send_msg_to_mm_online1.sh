#!/bin/bash
# Step1 创建有名管道
[ -e ./fd1 ] || mkfifo ./fd1

# 创建文件描述符，以可读（<）可写（>）的方式关联管道文件，这时候文件描述符3就有了有名管道文件的所有特性
exec 3<> ./fd1   

# 关联后的文件描述符拥有管道文件的所有特性,所以这时候管道文件可以删除，我们留下文件描述符来用就可以了
rm -rf ./fd1                    

# Step2 创建令牌 
for i in `seq 1 10`;
do
    # echo 每次输出一个换行符,也就是一个令牌
    echo >&3                   
done

# Step3 拿出令牌，进行并发操作
for count in {1..300}
do
    read -u3                    # read 命令每次读取一行，也就是拿到一个令牌   
    {
        # curl "https://sc.ftqq.com/SCU102387T3e36ebb35f0d7df3bb3fa99128431ddd5eef7ca198a61.send\?text\=test1online"
        # curl "https://pushbear.ftqq.com/sub?sendkey=18824-37226950ac81efa51e92585be4a0e517&text=test2online2"
        curl "http://wxpusher.zjiecode.com/api/send/message/?appToken=AT_mkWiqUXDAyn19TbUBaWpQLFeCXIE68l1&content=pusher1test20online$count&uid=UID_SbrrStuX12A9Qh1at1fyzBn0MGpA&url=http%3a%2f%2fwxpusher.zjiecode.com"
        sleep 0.01 
        time=$(date "+%Y-%m-%d-%H:%M:%S")
        echo -e "$0 $count $time" >> time.txt
        echo >&3                # 执行完一条命令会将令牌放回管道
    }&
done

wait

exec 3<&-                       # 关闭文件描述符的读
exec 3>&-                       # 关闭文件描述符的写