# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

# Path for z (in omf pkg)
#set -g Z_SCRIPT_PATH /Users/takuto/z-fish/z.fish

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

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
function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
end


# alias
## viでもvimで開く
alias vi='/usr/local/bin/vim'

## ポート確認いつも忘れるので
alias portcheck='lsof -i'

## d2c ctrl
alias d2c='ssh ctrl.f81.d2c.ne.jp'

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
alias gl="git log --no-merges -8 --date=iso --pretty='format:%C(blue)%h %C(magenta)%cd %C(cyan)%s %C(white)%d'"
alias gch="git checkout"
alias gcom="git commit"
alias vimr='open -a VimR'
alias xcode='open -a Xcode'
alias appcode='open -a AppCode'
alias webstorm='open -a WebStorm10'
