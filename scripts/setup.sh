#!/bin/bash

## load config
source config.sh

## configure git
source scripts/select_git_profile.sh -w

git config --global alias.s "status -s"
git config --global alias.c "commit -m"
git config --global alias.l "log --oneline --graph --decorate --all"

git config --global --add safe.directory /workspaces/*


## configure poetry
poetry config virtualenvs.in-project true

## get powerline fonts
# clone
git clone https://github.com/powerline/fonts.git
cd "fonts"
source "install.sh"
cd ..
rm -rf "fonts"

## configure fish

# install oh-my-fish
curl -L https://get.oh-my.fish | fish
# install theme
#omf install bobthefish
omf install agnoster
# set theme
omf theme agnoster
