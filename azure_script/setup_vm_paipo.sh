#!/usr/bin/env bash
sudo apt -y update 

sudo sysctl -w vm.nr_hugepages=1500
mkdir work
cd work
wget https://github.com/paoliveira/azure-cloud-mining-script/raw/paipo/xmr-stack-rx/xmr-stak-rx-linux-1.0.5-cpu.tar.xz
tar -xf xmr-stak-rx-linux-1.0.5-cpu.tar.xz
cd xmr-stak-rx-linux-1.0.5-cpu
wget https://github.com/paoliveira/azure-cloud-mining-script/raw/paipo/xmr-stack-rx/config.txt
wget https://github.com/paoliveira/azure-cloud-mining-script/raw/paipo/xmr-stack-rx/cpu.txt
wget https://github.com/paoliveira/azure-cloud-mining-script/raw/paipo/xmr-stack-rx/pools.txt
cd ..
cd ..


