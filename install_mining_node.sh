#!/bin/bash


sudo apt-get install -y git libmicrohttpd-dev libssl-dev cmake build-essential
git clone https://github.com/fireice-uk/xmr-stak-cpu.git
cd xmr-stak-cpu
cmake .
sudo make install
cd bin
rm config.txt
wget "https://github.com/midyan/monero-files/blob/master/lib/$1core/config.txt" -O config.txt
