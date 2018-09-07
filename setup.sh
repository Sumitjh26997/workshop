#!/bin/bash


#Installing Go Ethereum
sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum

#Install nodejs and npm
sudo apt-get install curl python-software-properties
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs
node -v
npm -v

#Install solc 
sudo npm install -g solc

#Install web3
sudo npm install web3

#Install python and pip
sudo add-apt-repository ppa:jonathonf/python-3.6
sudo apt update
sudo apt install python3.6
sudo apt install python-pip build-essential
sudo pip install --upgrade pip 
sudo pip install --upgrade virtualenv 

#Set python3.x as default version
echo -n "alias python=python3" >> ~/.bashrc 
echo -n "alias pip=pip3" >> ~/.bashrc 
source ~/.bashrc

#Install web3 python module
sudo pip install web3
