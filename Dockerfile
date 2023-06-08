FROM ubuntu 

# ubuntu setup
RUN apt-get update -y
RUN apt-get upgrade -y 

RUN apt-get install curl -y
RUN apt-get install sudo -y
RUN apt-get install git -y
RUN apt-get install make -y
RUN apt-get install vim -y 

# setup working directory
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1001 ubuntu
USER ubuntu
WORKDIR /home/ubuntu


RUN git clone https://github.com/cagve/dotinstall
