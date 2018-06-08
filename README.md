# 模块组成

* alpine 最新版为基础包，目前是3.7
* consul 1.0.6 注册中心监控
* mysql 
* redis 缓存


# 开始使用

* `git clone https://github.com/bluesky4485/jboot-docker.git`
* `cd jboot-docker && docker-compose build && docker-compose up -d`

# 镜像说明

## mysql
这里将mariadb放上去主要是提供一个docker的数据库，未与其他docker容器直接连接。

## redis
redis的密码请在redis/dockerfile文件里面进行修改，默认密码为123456

## [consul](https://store.docker.com/images/consul)
consul的使用说明请参考官方镜像的使用说明，这里只是将dockerfile拷贝了一份而已，统一依赖修改了镜像源的alpine镜像而已。
默认只暴露了ui界面的端口，适合本地开发，如果需要加入到别人的集群中，则需要在docker-compose.yml将其他端口一并映射出来。端口部分修改在consul的ports节点下面。


# 配置调整

*   mysql默认帐号密码：docker-compose.yml， 可以根据需要修改，其他配置可在mysql/my.cnf中修改

    ```yaml
    environment:
    - MYSQL_ROOT_PASSWORD=root
    - MYSQL_DATABASE=your_db_name
    - MYSQL_USER=developer
    - MYSQL_PASSWORD=developer
    ```

*   其他配置调整可以参照源码和注释修改，然后运行

    docker-compose build && docker-compose up -d

# 疑问与解答 

* 强烈建议windows用户仔细看看【[windows用户填坑建议](windows用户填坑建议.md)】，Windows下有一些问题，需要自行解决一下的。

* 其他有关docker基本概念和命令操作，请参考【[docker基础概念和命令操作](docker基础概念和命令操作.md)】。

* CentOS7 的docker安装脚本
本人常用服务器是CentOS的，其他的不熟，所以脚本基本上都是在CentOS上面跑的，[dockerinstall.sh](https://github.com/bluesky4485/linuxshell/blob/master/dockerinstall.sh)针对新部署的服务器来说，安装命令是没问题的，除docker外，还安装了git、nginx、tmux常用软件
