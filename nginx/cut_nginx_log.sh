#######################################################################
# File Name: cut_nginx_log.sh
# Author: Steven
# Email: liuchengwei98@163.com
# Create Time: 2015年12月13日 星期日 07时30分54秒
#======================================================================
#!/bin/bash
# This script run at 00:00
# The Nginx logs path
# 利用crontab -e 把这个文件定时执行 
# 00 00 * * * /usr/local/nginx/sbin/cut_nginx_log.sh restart
# 每天0晨执行
 logs_path="/usr/local/nginx/logs/"
 logs_bak_path="/var/log/nginx/"

echo -e "\e[1;35m"" 日志截取开始。。。"$(tput sgr0)
resettem=$(tput sgr0)

declare -A filearry
tmp=""
mkdir -p ${logs_bak_path}$(date -d "yesterday" +"%Y")/$(date -d "yesterday" +"%m")/
for log_file in `ls -I "error.log" ${logs_path}*.log`
do 
	tmp=${log_file%.log*}
	tmp=${tmp##*/}
	echo -e "\e[1;35m""正在截取${log_file} --- ${tmp}"$(tput sgr0)
	cp ${log_file} ${logs_bak_path}$(date -d "yesterday" +"%Y")/$(date -d "yesterday" +"%m")/${tmp}_$(date -d "yesterday" +"%Y%m%d").log
done;
rm -rf ${logs_path}*.log
kill -USR1 `cat ${logs_path}nginx.pid`
echo -e "\e[1;35m""截取完成"$(tput sgr0)
