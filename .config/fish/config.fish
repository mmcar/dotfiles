set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
set PATH $HOME/bin/scripts $PATH
rbenv rehash >/dev/null ^&1

# bootstrap fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# TODO: automatically install fisher packages if they aren't installed
