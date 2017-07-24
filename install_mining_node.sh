#!/bin/bash

sudo apt-get update
sudo apt-get install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev -y
git clone https://github.com/fireice-uk/xmr-stak-cpu.git
cd xmr-stak-cpu
cmake .
sudo make install
cd bin
rm config.txt
wget "https://raw.githubusercontent.com/midyan/monero-files/master/lib/$1core/config.txt" -O config.txt
