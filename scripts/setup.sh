#!/bin/bash
WORKDIR="/workspaces/rusty-python"
## load config
source $WORKDIR/config.sh
## configure git
bash $WORKDIR/scripts/select_git_profile.sh -w
git config --global alias.s "status -s"
git config --global alias.c "commit -m"
git config --global alias.l "log --oneline --graph --decorate --all"
git config --global --add safe.directory /workspaces/*
## configure poetry
poetry config virtualenvs.in-project "true"
## get and install powerline fonts
git clone https://github.com/powerline/fonts.git && cd "fonts" && source "install.sh" && cd .. && rm -rf "fonts"
## configure fish
# install oh-my-fish
curl -L https://get.oh-my.fish | fish
fish -c $WORKDIR"/scripts/setup_fish.sh"
exit 0