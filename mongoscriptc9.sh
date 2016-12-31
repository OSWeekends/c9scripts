#!/bin/bash
# My first script, and my first contribution for c9.io

echo "Installing mongodb please wait..."
sudo apt-get install -y mongodb-org
echo "Finished..."
echo "Creating data folder "
mkdir data
echo 'mongod --bind_ip=$IP --dbpath=data --nojournal --rest "$@"
You should use the host $IP instead of localhost as your driver connection URL.
For example, in Node, it is: process.env.IP
DBpath is /data because usually is /var/db and is not accesible in c9
Runs on default port 28017' > mongod
chmod a+x mongod
echo "mongod created succesfully, to run mongodb write ./mongod in the root folder"
echo "You should use the host $IP instead of localhost as your driver connection URL."
echo "For example, in Node, it is: process.env.IP"
echo "DBpath is /data because usually is /var/db and is not accesible in c9"
echo " Runs on default port 28017"
