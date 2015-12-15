#######################################################################
# File Name: install-nginx.sh
# Author: Steven
# Email: liuchengwei98@163.com
# Create Time: 2015年12月15日 星期二 12时55分24秒
#======================================================================
#!/bin/bash

#安装依赖包
yum install -y gcc gcc-c++ 
yum install -y pcre pcre-devel
yum install -y zlib zlib-devel
yum install -y openssl openssl-devel

yum install -y wget

mkdir /tmp-nginx & cd /tmp-nginx
wget http://nginx.org/download/nginx-1.9.9.tar.gz
tar -xvf nginx-1.9.9.tar.gz
cp -r /nginx-1.9.9 /usr/local
cd /usr/local/nginx-1.9.9
./configure
make && make install

#测试NGINX
/usr/local/nginx/sbin/nginx -V

echo '................install end ..................'

   
