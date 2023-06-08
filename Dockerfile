FROM ubuntu 

# ubuntu setup
RUN apt-get update -y
RUN apt-get upgrade -y 

# install curl for n
RUN apt-get install curl -y
RUN apt-get install vim -y 

# setup working directory
RUN useradd -s /bin/zsh tester
ADD . /home/tester/.dotfiles
RUN chown -R tester:tester /home/tester && \
    echo 'tester ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/tester && \
    chmod 0440 /etc/sudoers.d/tester
USER tester

WORKDIR /home/tester/.dotfiles
