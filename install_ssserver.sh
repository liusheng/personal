#!/bin/bash -ex
apt update -y

apt-get install python-pip -y
pip install shadowsocks 

ssserver -p 10555 -k password -m aes-256-cfb --user nobody -d start
