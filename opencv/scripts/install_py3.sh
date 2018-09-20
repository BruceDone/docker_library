#!/usr/bin/env bash



apt-get install -y \
    zlib1g-dev \
    openssl \
    libssl-dev \
    wget \
    build-essential \
    xz-utils \
    vim

# sqllite or other extension
apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev


mkdir /temp
cd /temp

wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tar.xz --show-progress
tar -xf Python-3.6.5.tar.xz

rm Python-3.6.5.tar.xz

cd Python-3.6.5
./configure  --enable-loadable-sqlite-extensions \
&& make -j$(nproc) && make install


rm /usr/bin/python
ln -s /usr/local/bin/python3.6 /usr/bin/python


mkdir -p ~/.pip

echo "[global]" > ~/.pip/pip.conf
echo "index-url = https://mirrors.aliyun.com/pypi/simple/" >> ~/.pip/pip.conf


apt-get install -y python-pip

pip3 install future numpy