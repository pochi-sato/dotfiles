echo "Reading .bash_profile ..."

# for neovim
export XDG_CONFIG_HOME=$HOME/.neovim/config

# for .bashrc
test -r ~/.bashrc && . ~/.bashrc
