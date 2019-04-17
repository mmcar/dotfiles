# dotfiles
Manage configuration between machines with a bare git repository

# Setup
```shell
    git init --bare $HOME/.dotfiles.git
    echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
    source ~/.zshrc
    dotfiles config --local status.showUntrackedFiles no
```

# Use
```shell
dotfiles add .vimrc
dotfiles commit -m "asd"
dotfiles push origin master
```
