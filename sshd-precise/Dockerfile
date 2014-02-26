# sshd
#
# VERSION 0.0.1

FROM ubuntu
MAINTAINER  John Cheng"devnull@johncheng.com"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:changeme' |chpasswd
