#!/bin/bash


sudo apt-get install -y git libmicrohttpd-dev libssl-dev cmake build-essential
git clone https://github.com/fireice-uk/xmr-stak-cpu.git
cd xmr-stak-cpu
cmake .
sudo make install
cd bin
rm config.txt
wget "https://bitbucket.org/yannunes/monero-files/raw/c7c6a8b410d3b4d1e3c5b150245e1b7bffca067c/lib/$1core/config.txt" -O config.txt
