" release autogroup in MyAutoCmd
" マクロなどはすべて'MyAutoCmd'というグループに属しているのでそれの
" 初期化（リセット）処理
augroup MyAutoCmd
  autocmd!
augroup END


" markdownのハイライトを有効にする
set syntax=markdown
au BufRead,BufNewFile *.md set filetype=markdown

syntax on
colorscheme torte
"colorscheme pablo
highlight Normal ctermbg=none
set nu
set ic "検索時大文字小文字を意識しない
set laststatus=2
set t_Co=256

"---------------------------------------------------
let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ }
"---------------------------------------------------

set ruler
" set nowrap
set whichwrap=h,l
set nowrapscan
set history=2000
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set helplang=en

"---------------------------------------------------
" 検索
"---------------------------------------------------
set ignorecase          " 大文字小文字を区別しない
set smartcase           " 検索文字に大文字がある場合は大文字小文字を区別
set incsearch           " インクリメンタルサーチ
set hlsearch            " 検索マッチテキストをハイライト (2013-07-03 14:30 修正）

" バックスラッシュやクエスチョンを状況に合わせ自動的にエスケープ
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

"---------------------------------------------------
" 編集
"---------------------------------------------------
set shiftround          " '<'や'>'でインデントする際に'shiftwidth'の倍数に丸める
set infercase           " 補完時に大文字小文字を区別しない
" set virtualedit=all     " カーソルを文字が存在しない部分でも動けるようにする
set hidden              " バッファを閉じる代わりに隠す（Undo履歴を残すため）
set switchbuf=useopen   " 新しく開く代わりにすでに開いてあるバッファを開く
set showmatch           " 対応する括弧などをハイライト表示する
set matchtime=3         " 対応括弧のハイライト表示を3秒にする

" 対応括弧に'<'と'>'のペアを追加
set matchpairs& matchpairs+=<:>

" バックスペースでなんでも消せるようにする
set backspace=indent,eol,start

if has('unnamedplus')
  set clipboard& clipboard+=unnamedplus,unnamed 
else
  set clipboard& clipboard+=unnamed
endif

" Swapファイル？Backupファイル？前時代的すぎ
" なので全て無効化する
set nowritebackup
set nobackup
set noswapfile

"---------------------------------------------------
" 表示
"---------------------------------------------------
" set list                " 不可視文字の可視化
set number              " 行番号の表示
set wrap                " 長いテキストの折り返し
set textwidth=0         " 自動的に改行が入るのを無効化
set colorcolumn=95      " その代わり95文字目にラインを入れる

" 前時代的スクリーンベルを無効化
set t_vb=
set novisualbell

" デフォルト不可視文字は美しくないのでUnicodeで綺麗に
" set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:.

"---------------------------------------------------
" キーバインド
"---------------------------------------------------
" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>

" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" カーソル下の単語を * で検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>


" w!! でスーパーユーザーとして保存（sudoが使える環境限定）
cmap w!! w !sudo tee > /dev/null %

" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

nnoremap gww :<C-u>vs<CR> "垂直分割"
nnoremap gwh :<C-u>sp<CR> "水平分割"
nnoremap gwn <C-w>w "次のウィンドウに移動"
nnoremap tt :<C-u>tabnew<CR> "新規タブ"
nnoremap tn gt "次のタブへ切り替え"
nnoremap tp gT "前のタブへ切り替え"

"---------------------------------------------------
" neobundle
"----------------------------------------------------

"nerdtree
nnoremap <silent><C-e> :NERDTreeToggle<CR>


set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
    set nocompatible               " Be iMproved
      " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

""GitHub以外のGitリポジトリにあるプラグインを利用する場合
"NeoBundle 'git://git.wincent.com/command-t.git'

"for unit.vim
NeoBundle 'Shougo/unite.vim'
"バグるので使ってない
"NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimfiler'
"lazyで実行
"NeoBundle 'scrooloose/nerdtree'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'wincent/command-t'
NeoBundle 'wesleyche/SrcExpl'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'vim-scripts/vim-auto-save'
call neobundle#end()

"----------------------------------------------------
" tree 表示
"----------------------------------------------------
NeoBundleLazy "scrooloose/nerdtree", {
      \ "autoload" : { "commands": ["NERDTreeToggle"] }}
if ! empty(neobundle#get("nerdtree"))
  nn <Leader>N :NERDTreeToggle<CR>
endif

" Required:
filetype plugin indent on
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Installation check.
"if neobundle#exists_not_installed_bundles()
"  echomsg 'Not installed bundles : ' .
"        \ string(neobundle#get_not_installed_bundle_names())
"  echomsg 'Please execute ":NeoBundleInstall" command.'
"  "finish
"endif
