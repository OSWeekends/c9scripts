#!/bin/bash

echo "Let's install Python 3.7 in C9!. Please check the guide: https://tecadmin.net/install-python-3-7-on-ubuntu-linuxmint/"

echo "Step 1 – Prerequsiteis..."
sudo apt-get install build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

echo "Step 2 – Download Python 3.7"
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
sudo tar xzf Python-3.7.0.tgz

echo "Step 3 – Compile Python Source..."
cd Python-3.7.0
sudo ./configure --enable-optimizations
sudo make altinstall 
# make altinstall is used to prevent replacing the default python binary file /usr/bin/python

echo "Step 4 (last) – Check Python Version..."
python3.7 -V
