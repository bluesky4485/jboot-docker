#!/bin/bash

# 清除已有的
docker stop consul
docker rm consul
docker rmi kolehank/consul 

# 重新生成
docker build -t kolehank/consul ./
