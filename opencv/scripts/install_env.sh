#!/usr/bin/env bash

apt-get install -y build-essential pkg-config
apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev wget
apt-get install -y libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev
apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
apt-get install -y ibatlas-base-dev gfortran
apt-get install -y ffmpeg  python-tk \
                    libgstreamer1.0-dev \
                    libgstreamer-plugins-base1.0-dev  \
                    v4l-utils \
                    g++