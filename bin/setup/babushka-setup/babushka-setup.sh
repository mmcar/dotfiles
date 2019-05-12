#!/bin/bash
# scaffold my ubuntu install
# run as root

main() {
    # babushka's only requirement is curl
    # it will install ruby and git before it clones itself from github
    sudo apt install curl
    sh -c "`curl https://babushka.me/up`"

    # TODO: run minimal babushka deps here 

}
main "$@"
