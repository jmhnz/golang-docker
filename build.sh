#!/bin/bash

#go build
GOOS=linux GOARCH=arm64 go build -o jamesjionenz/test ./...
## 交叉编译时需要指定CPU架构 GOARCH=amd64 or GOARCH=arm64
# arm64: 一般为嵌入式CPU架构, 如手机和平板电脑\路由器\NAS 等设备, Mac的新CPU也是ARM架构
# amd64: 一般为电脑\服务器CPU架构, 主流windows\Liunx服务器均为该型CPU
##

#docker build
docker build -t jamesji86/test:$1 .

#dockerhub push
docker login
docker push jamesji86/test:$1