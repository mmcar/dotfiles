#!/bin/bash
# scaffold my ubuntu install
# run as root

main() {
    # babushka's only requirement is curl
    # it will install ruby and git before it clones itself from github
    sudo apt install curl
    sh -c "`curl https://babushka.me/up`"

    # TODO: run minimal babushka deps here 
    # TODO: if I'm happy with minimal version, make it org literate
    # dep - get dotfiles from github
    # dep - apt packages - looks like they should each be their own dep
    # emacs (apt)
    # spacemacs (git)
    # neovim (source)
    # alacritty (apt?)
    # i3-gaps (source)
    # fish shell (apt)
    # vs-code (?)
    # discord
    # dep - modify /etc/hosts for remote and add ssh keys
    # dep - syncthing
    # 
}
main "$@"
