#!/bin/bash

colorPrint () {
   echo "$(tput setaf 1) $(tput setab 7) Opencv Installer $(tput sgr 0) $(tput setaf 1) $(tput bold) $1 $(tput setaf 7)"
} 

colorPrint "Welcome, $C9_FULLNAME!" 

colorPrint "First of all we need to update apt-get"
sudo apt-get update

colorPrint "2. Let's check your system (Node & Npm)..."

node_version=`node --version`
npm_version=`npm --version`

if [[ -z "$node_version" ]]
    then echo "Node Version Error!"
    exit
fi

colorPrint "3. Let's fix SUDO issue..."

echo "export NODE_PATH=$NODE_PATH:/home/ubuntu/.nvm/versions/node/$node_version/lib/node_modules" >> ~/.bashrc && source ~/.bashrc

colorPrint "4. Let's update NPM..."
npm update -g npm

colorPrint "5. Now we can start installing opencv"
colorPrint "   We will need your interaction dont go to grab a coffee yet"
colorPrint "   We will tell you when the long part is coming"
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev apt-get install build-essential cmake qt5-default libvtk6-dev zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev libtbb-dev libeigen3-dev ant default-jdk doxygen     

colorPrint "Ok, now we are dowloading, and installing, this is gonna take like 1 hour"
colorPrint "Downloadin version 2.4.13 (node compatible)"
wget https://github.com/Itseez/opencv/archive/2.4.13.zip
mv 2.4.13.zip opencv.zip 
unzip opencv.zip
rm opencv.zip
cd opencv-2.4.13
mkdir build
cd build
cmake -DWITH_QT=ON -DWITH_OPENGL=ON -DFORCE_VTK=ON -DWITH_TBB=ON -DWITH_GDAL=ON -DWITH_XINE=ON -DBUILD_EXAMPLES=ON ..
make -j8
sudo make install
sudo ldconfig
cd ..
cd ..
npm install -g opencv
git clone https://github.com/peterbraden/node-opencv.git
cd node-opencv
npm install
cd examples
node face-detection.js
echo "Image saved to node-opencv/examples/tmp/face-detection.png"
cd tmp
ls

colorPrint "WE HAVE FINISHED!"
colorPrint "open the face-detection.png to see the test results"