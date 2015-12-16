#######################################################################
# File Name: redis_backup.sh
# Author: Steven
# Email: liuchengwei98@163.com
# Create Time: 2015年12月17日 星期四 00时39分39秒
#======================================================================
#!/bin/bash
REDISCLI="/usr/local/redis-3.0.5/src/redis-cli -p 12002"
LOGFILE="/var/log/keepalived-redis-state.log"
echo "[backup]" >> $LOGFILE
date >> $LOGFILE
echo "Being slave...." >> $LOGFILE 2>&1
sleep 15 #延迟15秒待数据被对方同步完成之后再切换主从角色
echo "Run SLAVEOF cmd ..." >> $LOGFILE

$REDISCLI SLAVEOF 192.168.5.132 12002 >> $LOGFILE  2>&1


