#!/bin/bash

while true
do
	echo "1. geth"
	echo "2. nodejs, npm"
	echo "3. solc"
	echo "4. web3 npm"
	echo "5. web3 python"
	echo "6. Exit"
	
	echo "Enter choice : "
	read ch

    if test $ch -eq 6
	then
		exit
	fi

    case $ch in

    1.) #Installing Go Ethereum
        sudo apt-get install software-properties-common
        sudo add-apt-repository -y ppa:ethereum/ethereum
        sudo apt-get update
        sudo apt-get install ethereum
        geth --help;;

    2.) #Install nodejs and npm
        sudo apt-get install curl python-software-properties
        curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
        sudo apt-get install nodejs
        echo "nodejs version:" 
        node -v
        echo "npm version:"
        npm -v;;

    3.) #Install solc 
        sudo npm install solc;;

    4.) #Install web3
        sudo npm install web3;;

    5.) #Install python and pip
        sudo add-apt-repository ppa:jonathonf/python-3.6
        sudo apt update
        sudo apt install python3.6
        sudo apt install python-pip build-essential
        sudo pip install --upgrade pip 
        sudo pip install --upgrade virtualenv 

        #Set python3.x as default version
        echo -n "alias python=python3" >> ~/.bashrc 
        echo >> ~/.bashrc
        echo -n "alias pip=pip3" >> ~/.bashrc 
        source ~/.bashrc

        echo "python version:"
        python --version
        echo "pip version:"
        pip --version

        #Install web3 python module
        sudo pip install web3;;

    esac
done








