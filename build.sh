#!/bin/bash

#go build
GOOS=linux GOARCH=amd64 go build -o jamesji86/test ./...

#docker build
docker build -t jamesji86/test:1.2 .

#dockerhub push
docker login
docker push jamesji86/test:1.2