#!/usr/bin/env bash
sudo apt -y update 
sudo apt -y install unzip
sudo sysctl -w vm.nr_hugepages=4096
#sudo sysctl -w vm.nr_hugepages=1500
mkdir work
cd work

#monero
#xmr-stack-rx
#F2 : 600 H/s
#F4 : 1.6 kH/s cpu.txt false
wget https://github.com/paoliveira/azure-cloud-mining-script/raw/paipo/xmr-stack-rx/xmr-stak-rx-linux-1.0.5-cpu.tar.xz
tar -xf xmr-stak-rx-linux-1.0.5-cpu.tar.xz
cd xmr-stak-rx-linux-1.0.5-cpu
wget https://github.com/paoliveira/azure-cloud-mining-script/raw/paipo/xmr-stack-rx/config.txt
wget https://github.com/paoliveira/azure-cloud-mining-script/raw/paipo/xmr-stack-rx/cpu.txt
wget https://github.com/paoliveira/azure-cloud-mining-script/raw/paipo/xmr-stack-rx/pools.txt

cd ..
rm xmr-stak-rx-linux-1.0.5-cpu.tar.xz

#xmrig
#F2 :
#F4 : 1.2
wget https://github.com/xmrig/xmrig/releases/download/v6.12.0/xmrig-6.12.0-linux-static-x64.tar.gz
tar -xf xmrig-6.12.0-linux-static-x64.tar.gz
rm xmrig-6.12.0-linux-static-x64.tar.gz

#rainbowminer
wget https://github.com/RainbowMiner/RainbowMiner/releases/download/v4.7.1.4/RainbowMinerV4.7.1.4_linux.zip
mkdir RainbowMinerV4.7.1.4_linux
cd RainbowMinerV4.7.1.4_linux
unzip ../RainbowMinerV4.7.1.4_linux.zip
chmod +x *.sh
cd ..
rm RainbowMinerV4.7.1.4_linux.zip

#nplusminer #windows


cd ..
