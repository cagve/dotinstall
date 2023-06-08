FROM ubuntu 

# ubuntu setup
RUN apt-get update -y
RUN apt-get upgrade -y 

RUN apt-get install curl -y
RUN apt-get install git -y
RUN apt-get install make -y
RUN apt-get install vim -y 

# setup working directory
RUN useradd -ms /bin/bash tester
USER tester
WORKDIR /home/tester

RUN git clone https://github.com/cagve/dotinstall
