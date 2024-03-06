#!/bin/bash

#go build
GOOS=linux GOARCH=amd64 go build -o $1 ./...

#docker build
docker build --build-arg TargetImage=$1 -t $1:$2 .