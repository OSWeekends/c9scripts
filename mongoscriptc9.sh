#!/bin/bash
# My first script, and my first contribution for c9.io

echo "Installing mongodb please wait..."
sudo apt-get install -y mongodb-org
echo "Finished..."
echo "Creating data folder "
mkdir data
echo 'mongod --bind_ip=$IP --dbpath=data --nojournal --rest "$@"' > mongod
chmod a+x mongod
echo "mongod created succesfully, to run mongodb write ./mongod in the root folder"