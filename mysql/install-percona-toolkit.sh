#######################################################################
# File Name: install-percona-toolkit.sh
# Author: Steven
# Email: liuchengwei98@163.com
# Create Time: 2015年12月17日 星期四 22时46分21秒
#======================================================================
#!/bin/bash

#percona-toolkit是一组高级命令行工具的集合，用来执行各种通过手工执行非常复杂和麻烦的mysql和系统任务。这些任务包括：

#检查master和slave数据的一致性
#有效地对记录进行归档
#查找重复的索引
#对服务器信息进行汇总
#分析来自日志和tcpdump的查询
#当系统出问题的时候收集重要的系统信息
# percona-toolkit mysql慢查询日志分析类工具
#：安装于Perl相关的模块:u
yum install perl-DBI

yum install perl-DBD-MySQL

yum install perl-Time-HiRes

yum install perl-IO-Socket-SSL

yum install perl-Digest-MD5

#需要动态改下 
wget percona.com/get/percona-toolkit.rpm

#: 安装Percona Toolkit
rpm -Uvh percona-toolkit-2.2.1-2.noarch.rpm

###############################
#安装percona-toolkit非常简单，到官网下载.tar.gz包：

wget percona.com/get/percona-toolkit.tar.gz
tar -zxvf percona-toolkit-2.2.5.tar.gz
#然后依次执行下面的命令：

perl Makefile.PL
make
make test
make install
#默认的会被安装在/usr/local/bin目录下。执行man percona-toolkit可以查看安装了哪些工具。



