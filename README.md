# dotfiles
Manage configuration between machines with a bare git repository

# Setup
```shell
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME
git clone --bare https://github.com/mmcar/dotfiles.git $HOME/.dotfiles.git
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no

```

# Use
```shell
dotfiles add .vimrc
dotfiles commit -m "asd"
dotfiles push origin master
```
