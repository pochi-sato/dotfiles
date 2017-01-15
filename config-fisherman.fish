# ~/.config/fish/config.fish
# gcloud
#set -x PATH $HOME/google/google-cloud-sdk/bin $PATH
#set -x PATH $HOME/google/appengine-java-sdk-1.9.30/bin/ $PATH
# homebrew
#set -x PATH /usr/local/bin /usr/local/sbin $PATH

# rust
set -x PATH $HOME/.cargo/bin $PATH

# nodebrew
set -x PATH $HOME/.nodebrew/current/bin $PATH

# emscripten
#set -x PATH /opt/emsdk/emscripten/1.35.0 $PATH
 
# phpenv
#eval "$(phpenv init -)"
#set -x PATH $HOME/.phpenv/bin $PATH
#set -x PATH $HOME/.phpenv/shims $PATH
#phpenv rehash >/dev/null ^&1
 
# rbenv
#eval "$(rbenv init -)";
#set -x PATH $HOME/.rbenv/bin $PATH
#set -x PATH $HOME/.rbenv/shims $PATH
#rbenv rehash >/dev/null ^&1
 
# npm
#export PATH="/usr/local/share/npm/bin:$PATH"
#set -x PATH /usr/local/share/npm/bin $PATH

# viモード
#set -U fish_key_bindings fish_vi_key_bindings
set -U fish_key_bindings fish_default_key_bindings


# for z, z-fish
#if test -f /opt/local/etc/z.fish
#  . /z.fish/z.fish
#end

#power line
#Theme "agnoster"
#Theme 'bobthefish'

#gotegote
#Theme 'ocean'

#simple
#Theme 'beloglazov'

#emoji
#Theme 'Toaster'

#so simple
#Theme 'clearance'

#git staging & not staging num
#Theme 'cbjohnson'

#Theme 'idan'
#Theme 'robbyrussell'

# binding
#function fish_user_key_bindings
#  bind \cr peco_select_history # Bind for prco history to Ctrl+r
#end

# alias
## ポート確認いつも忘れるので
alias portcheck='lsof -i'

## git
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gb='git branch'
alias gbr='git branch -r'
alias gba='git branch -a'
alias gbv='git branch -va'
alias ga='git add'
alias gap='git add -p'
alias gr='git reset'
alias grsh='git reset --soft HEAD~'
alias grh='git reset head'
alias gl="git log --no-merges -8 --date=iso --pretty='format:%C(blue)%h %C(magenta)%cd %C(cyan)%s %C(white)%d'"
alias gch="git checkout"
alias gcom="git commit"

## Editor
alias xcode='open -a Xcode'
alias appcode='open -a AppCode'
alias webstorm='open -a WebStorm'
alias m='cd ~/Dropbox/share/memoBox;vim'
alias lt='ls -lt'
alias lr='ls -ltr'

## temporaly
alias sabo='cd ~/devHome/sabo'
alias gswift='gcloud compute --project "gentle-edition-114108" ssh --zone "asia-east1-a" "swift-ubuntu-14-04"'
alias gnode='gcloud compute --project "gentle-edition-114108" ssh --zone "asia-east1-a" "nodejs-1"'
alias gcent='gcloud compute --project "gentle-edition-114108" ssh --zone "asia-east1-a" "centos-6-1"'
