echo "Reading .bash_profile ..."

# for neovim
export XDG_CONFIG_HOME=$HOME/.neovim/config

# for .bashrc
test -r ~/.bashrc && . ~/.bashrc

# The next line updates PATH for the Google Cloud SDK.
source '/opt/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/opt/google-cloud-sdk/completion.bash.inc'
