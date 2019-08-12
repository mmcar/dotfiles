# TODO: Make fish bootstrap fisher and bootstrap packages on first run

# Common programs from package manager
sudo apt update
sudo apt upgrade -y
sudo apt install -y git fish tmux emacs

git config --global user.name "Matthew McArthur"
git config --global user.email "matthew.mcarthur91@gmail.com"

# grab dotfile from github
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
dotfiles checkout
git clone --bare https://github.com/mmcar/dotfiles.git $HOME/.dotfiles.git
dotfiles config --local status.showUntrackedFiles no

# vanilla spacemacs TODO: move customization to a single private layer
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# i3-gaps from PPA
sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt update
sudo apt install i3-gaps
