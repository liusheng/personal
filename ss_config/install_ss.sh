#!/bin/bash -ex
apt update -y

apt-get install python-pip -y
pip install shadowsocks 

ssserver -p 10555 -k password -m rc4-md5 --user nobody -d start
