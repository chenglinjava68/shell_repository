#!/usr/bin/env bash
ls -F -R  递归显示出目录 并格式化输出
sort -n  file
sort -t ":" -k 3 -M file 以冒号切分字段并按照第三列按照月份排序
du -sh * | sort -nr   所有文件按照占用空间大小逆向排序
grep -c -e t -e f  指定多个匹配模式 -c 统计匹配数
grep -v

#!/bin/bash
# process new user accounts
input="users.csv"
while IFS=',' read -r userid name
do
echo "adding $userid"
useradd -c "$name" -m $userid
done < "$input"