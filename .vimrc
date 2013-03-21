"------------------------------------------------------------
" for BUNDLE
"------------------------------------------------------------
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'html5.vim'
Bundle 'HTML5-Syntax-File'
Bundle 'Better-CSS-Syntax-for-Vim'
Bundle 'Simple-Javascript-Indenter'
Bundle 'jQuery'

"Bundle 'clang-complete'
"Bundle 'clang'
Bundle 'neocomplcache'

"Bundle 'indentjava.vim'
Bundle 'javacomplete'
"Bundle 'javabean.vim'
"Bundle 'Java-Syntax-and-Folding'
"Bundle 'java.vim'


"Bundle 'Enhanced-Javascript-syntax'
"Bundle 'JavaScript-Indent'
"Bundle 'JavaScript-syntax-add-E4X-support'
"Bundle 'JavaScript-syntax'
"Bundle 'javascript.vim'


"Bundle 'JSON.vim'
"Bundle 'Javascript-OmniCompletion-with-YUI-and-j'
"Bundle 'Better-Javascript-Indentation'
"Bundle 'Javascript-syntax'
"Bundle 'pangloss/vim-javascript'
"Bundle 'OOP-javascript-indentation'

" commnet out
" Bundle 'The-NERD-Commenter'

Bundle 'Indent-Guides'
"Bundle 'Haml'
Bundle 'haml.zip'


"------------------------------------------------------------


" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
 
"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
 
" ファイル名と内容によってファイルタイプを判別し、ファイルタイププラグインを有効にする
filetype indent plugin on
 
" Enable syntax highlighting
" 色づけをオン
syntax on
 
 
"------------------------------------------------------------
" Must have options {{{1
" 強く推奨するオプション

" バッファを保存しなくても他のバッファを表示できるようにする
set hidden

" コマンドライン補完を便利に
set wildmenu

" タイプ途中のコマンドを画面最下行に表示
set showcmd

" 検索語を強調表示（<C-L>を押すと現在の強調表示を解除する）
set hlsearch

"------------------------------------------------------------
" Usability options {{{1

" 検索時に大文字・小文字を区別しない。ただし、検索後に大文字小文字が
" 混在しているときは区別する
set ignorecase
set smartcase

" オートインデント、改行、インサートモード開始直後にバックスペースキーで
" 削除できるようにする。
set backspace=indent,eol,start

" オートインデント
set autoindent

" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline

" 画面最下行にルーラーを表示する
set ruler

" ステータスラインを常に表示する
set laststatus=2

" バッファが変更されているとき、コマンドをエラーにするのでなく、保存する
" かどうか確認を求める
set confirm

" ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set visualbell

" そしてビジュアルベルも無効化する
set t_vb=

" 全モードでマウスを有効化
set mouse=a

" コマンドラインの高さを2行に
set cmdheight=2

" 行番号を表示
set number

" キーコードはすぐにタイムアウト。マッピングはタイムアウトしない
set notimeout ttimeout ttimeoutlen=200

" <F11>キーで'paste'と'nopaste'を切り替える
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options {{{1
" インデント関連のオプション {{{1
"

" タブ文字の代わりにスペース2個を使う場合の設定。
" この場合、'tabstop'はデフォルトの8から変えない。
set shiftwidth=2
set softtabstop=2
set expandtab

" インデントにハードタブを使う場合の設定。
" タブ文字を2文字分の幅で表示する。
"set shiftwidth=2
"set tabstop=2


"------------------------------------------------------------
" Mappings {{{1
" マッピング

" Yの動作をDやCと同じにする
map Y y$

" <C-L>で検索後の強調表示を解除する
nnoremap <C-L> :nohl<CR><C-L>


"------------------------------------------------------------
set encoding=utf8                 "エンコーディング設定
set fileencoding=utf-8            "カレントバッファ内のファイルの文字エンコーディングを設定する
set fileformats=unix,mac,dos

autocmd QuickfixCmdPost make copen

autocmd FileType java :setlocal omnifunc=javacomplete#Complete
autocmd FileType java :setlocal completefunc=javacomplete#CompleteParamsInfo
