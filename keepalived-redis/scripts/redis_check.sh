#######################################################################
# File Name: redis_check.sh
# Author: Steven
# Email: liuchengwei98@163.com
# Create Time: 2015年12月17日 星期四 00时19分08秒
#======================================================================
#!/bin/bash

ALIVE=`/usr/local/redis-3.0.5/src/redis-cli -p 12002 PING`
if [ "$ALIVE" == "PONG" ]; then
	echo $ALIVE
	exit 0
else
	echo $ALIVE
	exit 1
fi

