#!/bin/bash

# 获取访问者的 IP 地址
visitor_ip=$(curl -s http://checkip.amazonaws.com)

# 获取当前时间
timestamp=$(date "+%Y-%m-%d %H:%M:%S")

# 记录访问日志
echo "$timestamp - Visitor IP: $visitor_ip" >> visitor_log.txt

# 推送更新到 GitHub
git config --global user.email "lhy2935@gmail.com"
git config --global user.name "Hongyuan-LIN"
git add visitor_log.txt
git commit -m "Update visitor log"
git push
