#!/bin/bash
# Shell script sederhana untuk instalasi dan konfigurasi opencv dalam sistem operasi ubuntu
# Diuji pada Ubuntu 12.04 Precise Pangolin
# ------------------------------------------------------------------------------------------
# Ditulis oleh Hendri Karisma <http://situkangsayur.wordpress.com/>
# (c) 2012 situkangsayur.wordpress.com under CC-BY-SA
# <http://creativecommons.org/licenses/by-sa/3.0/>
# -------------------------------------------------------------------------------------------
# Terakhir diupdate: 02/December/2012
# ----------------------------------------------------------------------------


cd ~
mkdir ~/projects

cp OpenCV-2.4.3.tar.bz2 ~/projects
cd ~/projects
tar -xvf OpenCV-2.4.3.tar.bz2
mv OpenCV-2.4.3 opencv
cd ~/projects/opencv


sudo apt-get install cmake
sudo apt-get install libtbb2
sudo apt-get install libtbb-dev
sudo apt-get install qt
sudo apt-get install glib
sudo apt-get install ffmpeg
sudo apt-get install libgstreamer
sudo apt-get install libv4l
sudo apt-get install libxine
sudo apt-get install unicap
sudo apt-get install libdc1394
sudo apt-get install libXtst-dev
sudo apt-get install libavformat-dev libswscale-dev 
sudo apt-get install libjpeg libjpeg-dev libjasper-dev libtiff4-dev libtiff libjasper libpng zlib openexr gtk+-2.0 gthread-2.0 gstreamer-base-0.10 gstreamer-app-0.10 gstreamer-video-0.10 libavcodec libavformat libavutil libswscale
cd ~/projects/opencv
mkdir release
cd release

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_PYTHON_SUPPORT=ON WITH_QT=ON ..

sudo make install

export LD_LIBRARY_PATH=~/projects/opencv/release/lib:$LD_LIBRARY_PATH
sudo ldconfig

