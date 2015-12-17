#######################################################################
# File Name: mysql-backup.sh
# Author: Steven
# Email: liuchengwei98@163.com
# Create Time: 2015年12月18日 星期五 00时16分03秒
#======================================================================
#!/bin/bash


# 环境变量
PATH=/bin:/usr/bin:/sbin:/usr/sbin; export PATH
export LANG=C


# 日常备份目录
basedir=/backup/daily/

# 数据库账户
user=root
passwd=111111

# mysql备份目录
mysql_db_bak=$basedir/$(date +%F_%H%M)
[ ! -d "$mysql_db_bak" ] && mkdir -p $mysql_db_bak

# mysql下所有库名称
db_name=("information_schema" "mysql" "test")

# 1.备份MySQL数据库 
for((i=0; i!=${#db_name[@]}; ++i))
{
mysqldump -u $user -p$passwd --opt --skip-lock-tables --flush-logs --database ${db_name[i]} > $mysql_db_bak/${db_name[i]}.sql
}
