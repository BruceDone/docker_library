FROM ubuntu:16.04

MAINTAINER nicefish66@gmail.com

# replace the source to aliyun , speed up the apt
RUN apt-get update  &&  \
    sed -i -e "s/\/\/archive.ubuntu/\/\/mirrors.aliyun/" /etc/apt/sources.list && \
    apt-get update

COPY ./scripts /scripts

RUN sh /scripts/install.sh