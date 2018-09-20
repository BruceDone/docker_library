#!/usr/bin/env bash
apt-get install -y wget git libv4l-0 cmake unzip python3-dev


mkdir -p /temp
cd /temp

#git clone https://github.com/opencv/opencv.git

wget https://github.com/opencv/opencv/archive/3.4.3.zip

unzip opencv-3.4.3.zip

cd opencv-3.4.3
mkdir build
cd build

cmake -D WITH_LIBV4L=ON -D PYTHON_DEFAULT_EXECUTABLE=$(which python3) -D WITH_IPP=OFF -D CMAKE_BUILD_TYPE=Release WITH_FFMPEG=ON  ../

make -j$(nproc) && make install && ldconfig