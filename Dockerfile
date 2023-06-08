FROM ubuntu 

# ubuntu setup
RUN apt-get update -y
RUN apt-get upgrade -y 

RUN apt-get install curl -y
RUN apt-get install sudo -y
RUN apt-get install git -y
RUN apt-get install make -y
RUN apt-get install vim -y 
RUN apt-get install libfuse2 -y 

# setup working directory
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1001 ubuntu -p "$(openssl passwd -1 ubuntu)"
USER ubuntu
WORKDIR /home/ubuntu


RUN echo 'export PATH=$PATH:~/.local/bin/' > .bashrc
RUN git clone https://github.com/cagve/dotinstall
