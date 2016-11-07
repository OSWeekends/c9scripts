#!/bin/bash

colorPrint () {
   echo "$(tput setaf 1) $(tput setab 7) Visualizer Installer $(tput sgr 0) $(tput setaf 1) $(tput bold) $1 $(tput setaf 7)"
} 

colorPrint "Welcome, $C9_FULLNAME!" 

colorPrint "1. Let's check your system (Node & Npm)..."

node_version=`node --version`
npm_version=`npm --version`

if [[ -z "$node_version" ]]
    then echo "Node Version Error!"
    exit
fi

colorPrint "2. Let's fix SUDO issue..."

echo "export NODE_PATH=$NODE_PATH:/home/ubuntu/.nvm/versions/node/$node_version/lib/node_modules" >> ~/.bashrc && source ~/.bashrc

colorPrint "3. Let's update NPM..."
npm update -g npm

colorPrint "4. Let's install global npm dependencies..."

colorPrint "- Gulp..."
npm install -g gulp

colorPrint "- Grunt..."
npm install -g grunt

colorPrint "- Bower..."
npm install -g bower

colorPrint "- Yeoman..."
npm install -g yo 

colorPrint "5. Let's check all the dependencies..."
yo doctor

