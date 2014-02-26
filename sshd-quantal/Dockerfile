# sshd
#
# VERSION 0.0.1

FROM ubuntu:quantal
MAINTAINER  John Cheng "devnull@johncheng.com"

RUN echo "deb http://archive.ubuntu.com/ubuntu quantal main universe" > /etc/apt/sources.list
RUN apt-get update && apt-get install -y  --force-yes -f openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:changeme' |chpasswd
