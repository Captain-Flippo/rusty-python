#!usr/bin/env bash

# load config
source config.sh

# if flasg is set, use the private git profile
if [ "$1" == "-p" ]; then
    git config --global user.name "$GIT_USER"
    git config --global user.email $GIT_EMAIL
    echo "Git user set to:"
    git config --global user.name
    echo "Git email set to:"
    git config --global user.email
elif [ "$1" == "-w" ]; then
    git config --global user.name "$GIT_USER_WORK"
    git config --global user.email $GIT_EMAIL_WORK
    echo "Git user set to:"
    git config --global user.name
    echo "Git email set to:"
    git config --global user.email
else
    echo "Usage: select_git_profile.sh [-p] [-w]"
    echo "  -p  use private git profile"
    echo "  -w  use work git profile"
fi
