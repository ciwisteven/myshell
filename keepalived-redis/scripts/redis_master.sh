#######################################################################
# File Name: redis_master.sh
# Author: Steven
# Email: liuchengwei98@163.com
# Create Time: 2015年12月17日 星期四 00时27分36秒
#======================================================================
#!/bin/bash

REDISCLI="/usr/local/redis-3.0.5/src/redis-cli -p 12002"
LOGFILE="/var/log/keepalived-redis-state.log"
echo "[master]" >> $LOGFILE
date >> $LOGFILE
echo "Being master...." >> $LOGFILE 2>&1
echo "Run SLAVEOF cmd ..." >> $LOGFILE
$REDISCLI SLAVEOF 192.168.5.132 12002 >> $LOGFILE  2>&1
sleep 10 #延迟10秒以后待数据同步完成后再取消同步状态
echo "Run SLAVEOF NO ONE cmd ..." >> $LOGFILE
$REDISCLI SLAVEOF NO ONE >> $LOGFILE 2>&1


