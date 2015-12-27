#!/usr/bin/env bash

################################################
echo "**yum install"

sudo yum -y install git
#sudo yum -y install vim


sudo service iptables stop
sudo chkconfig iptables off



################################################
echo "**etherpad"


sudo rpm -ivh http://ftp.iij.ad.jp/pub/linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm

# node.js
sudo yum -y install nodejs npm --enablerepo=epel


# etherpad 
cd /home/vagrant

git clone https://github.com/ether/etherpad-lite.git
cd etherpad-lite/

# 依存パッケージの導入
sh bin/installDeps.sh

# etherpad start

#bin/run.sh

echo "completed"


echo "1. ssh login. 
echo "2. cd /home/vagrant/etherpad-lite/bin; run.sh"

echo "3. then access http://192.168.33.10:9001 on your web browser."


