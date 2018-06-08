FROM kolehank/alpine
MAINTAINER kolehank kolehank@gmail.com

# 软件包安装
RUN apk add redis

# 端口号配置
EXPOSE 6379

# 容器命令执行
CMD ["redis-server", "--requirepass", "123456"]