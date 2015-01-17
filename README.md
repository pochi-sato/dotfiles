# 設定方法

## シンボリックリンクを張る

.zpreztoについては、以下のファイルから参照がかかっているので、
クローン後同様の設定を行うか、予めpreztoをインストールしとくべし。

lrwxr-xr-x    1 pochi  staff     36  1 17 15:10 .zlogin -> /Users/pochi/.zprezto/runcoms/zlogin
lrwxr-xr-x    1 pochi  staff     37  1 17 15:10 .zlogout -> /Users/pochi/.zprezto/runcoms/zlogout
lrwxr-xr-x    1 pochi  staff     39  1 17 15:10 .zpreztorc -> /Users/pochi/.zprezto/runcoms/zpreztorc
lrwxr-xr-x    1 pochi  staff     38  1 17 15:10 .zprofile -> /Users/pochi/.zprezto/runcoms/zprofile
lrwxr-xr-x    1 pochi  staff     36  1 17 15:10 .zshenv -> /Users/pochi/.zprezto/runcoms/zshenv
lrwxr-xr-x    1 pochi  staff     35  1 17 15:10 .zshrc -> /Users/pochi/.zprezto/runcoms/zshrc

### 張り方

ln -sf ~/dotfiles/.vimrc ~/.vimrc

- 対象は以下全て。

ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zprezto ~/.zprezto
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
