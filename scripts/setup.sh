#!/bin/bash

## load config
source config.sh

## configure git
git config --global user.name $GIT_USER
git config --global user.email $GIT_EMAIL

git config --global alias.s "status -s"
git config --global alias.c "commit -m"
git config --global alias.l "log --oneline --graph --decorate --all"


## configure poetry
poetry config virtualenvs.in-project true

## get powerline fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

## configure fish

# install oh-my-fish
curl -L https://get.oh-my.fish | fish
# install theme
#omf install bobthefish
omf install agnoster
# set theme
omf theme agnoster
