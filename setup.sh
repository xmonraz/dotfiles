#!/bin/bash

# bash
ln -sb `pwd`/.bash_aliases ~/.bash_aliases
ln -sb `pwd`/.bash_prompt ~/.bash_prompt
cat >> ~/.bashrc <<EOL

if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi
EOL

# ubuntu 18
sudo apt update
sudo apt install -y \
     apt-utils \
     curl \
     git \
     gufw \
     apt-transport-https \
     exfat-fuse \
     exfat-utils \
     markdown

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo adduser $USER docker

# docker-compose completion
sudo curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

# emacs/prelude
sudo apt install -y emacs
export PRELUDE_URL="https://github.com/xmonraz/prelude.git" && curl -L https://github.com/xmonraz/prelude/raw/master/utils/installer.sh | sh
