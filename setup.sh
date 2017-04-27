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
sudo apt update
sudo apt install \
     indicator-multiload \
     paper-icon-theme \
     paper-cursor-theme \
     paper-gtk-theme \
     markdown \

# docker-compose completion
sudo curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

# prelude
export PRELUDE_URL="https://github.com/xmonraz/prelude.git" && curl -L https://github.com/xmonraz/prelude/raw/master/utils/installer.sh | sh
