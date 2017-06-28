# How to deploy a mining node:

To Install the XMR-Stak-Cpu:
```
wget https://github.com/midyan/monero-files/blob/master/install_mining_node.sh
sudo chmod +x install_mining_node.sh
sudo ./install_mining_node.sh 4 // This of cores you want to use.
                                // Goes from 1 to 8
cd xmr-stak-cpu/bin // Get into the bin directory
```

Now, edit the config.txt file with you pool and wallet address, pool address and http port (low cores are preconfigured with 9999, higher is 80). Mine is preconfigured here, if you wanna mine for me I'll be thankful =D

Now, you need a way to run the miner on the background. You can either user a system service (which I'll automate it later on) or you could use a screen app (I use tmux).

To install and run on tmux. See the cheat-sheet for Tmux [here](https://gist.github.com/MohamedAlaa/2961058)
```
sudo apt-get install tmux -y
tmux new -s mining
tmux a -t mining
```

Inside the Tmux screen simply run:
```
./xmr-stak-cpu config.txt
```

Now, to leave the screen press CTRL+B and then D
