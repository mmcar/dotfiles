#!/bin/sh

# clone bare dotfiles from github.com/mmcar/dotfiles.git
# checkout will restore the working tree which will scaffold our directories

# some git commands must be done in the directory of a working tree. We're making one at ~
cd $HOME

# the only dependency for this script is git
sudo apt install git

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"

git clone --bare https://github.com/mmcar/dotfiles.git $HOME/.dotfiles.git

dotfiles checkout

dotfiles config --local status.showUntrackedFiles no




