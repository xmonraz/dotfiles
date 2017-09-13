#!/bin/bash

# bash
ln -sb `pwd`/.bash_aliases ~/.bash_aliases
ln -sb `pwd`/.bash_prompt ~/.bash_prompt
cat >> ~/.bashrc <<EOL

if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi
EOL

# ubuntu 16
sudo apt-get update
sudo apt-get install -y \
     apt-utils \
     curl \
     apt-transport-https \
     ca-certificates \
     software-properties-common \
     indicator-multiload \
     markdown

# paper theme
sudo add-apt-repository -y ppa:snwh/pulp
sudo apt-get update
sudo apt-get install -y \
     paper-icon-theme \
     paper-cursor-theme \
     paper-gtk-theme

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client

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
sudo apt-get install -y emacs25
export PRELUDE_URL="https://github.com/xmonraz/prelude.git" && curl -L https://github.com/xmonraz/prelude/raw/master/utils/installer.sh | sh
