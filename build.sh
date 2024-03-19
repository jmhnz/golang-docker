#!/bin/bash

#go build
GOOS=linux GOARCH=amd64 go build -o jamesjionenz/test ./...

#docker build
docker build -t jamesjionenz/test:1.2 .

#dockerhub push
docker login
docker push jamesjionenz/test:1.2