"Use vundle to manage plugin, required turn file type off and nocompatible
filetype off
set nocompatible 
set rtp+=~/.vim/bundle/vundle
cal vundle#rc()
"Let vundle manage vundle,required
Bundle 'gmarik/vundle'
"My bundles here:
Bundle 'altercation/vim-colors-solarized'
Bundle 'matrix.vim--Yang'
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
Bundle 'a.vim'
Bundle 'autoload_cscope.vim'
Bundle 'cscope'
"Brief help of vundle
    ":BundleList
    ":BundleInstall
    ":BundleSearch
    ":BundleClean
    ":help vundle
"End brief help

"Show line number, command, status line and so on
set history=1000
set ruler
set number
set showcmd
set showmode
set laststatus=2
set cmdheight=2
set scrolloff=3

"Fill space between windows
set fillchars=stl:\ ,stlnc:\ ,vert:\ 

"Turn off annoying error sound
set noerrorbells
set novisualbell
set t_vb=

"Turn off splash screen
set shortmess=atI

"syntax and theme
syntax on
colorscheme desert
set background=dark
set cursorline
set cursorcolumn

"Configure backspace to be able to across two lines
set backspace=2
set whichwrap+=<,>,h,l

"Tab and indent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set cindent

"Files,backups and encoding
set nobackup
set noswapfile
set autoread
set autowrite
set autochdir
set fileencodings=utf-8
set fileformats=unix,dos,mac
filetype plugin on
filetype indent on

"Text search and replace
set showmatch
set matchtime=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set magic
set lazyredraw
set nowrapscan
set iskeyword+=_,$,@,%,#,-,.

"Gvim config
if has("gui_runninf")
    colorscheme solarized
endif
set guifont=DejaVu\ Sans\ Mono\ 15
set guioptions=aegic

"Use taglist to view the openwrt source
"Must set tags file path
set tags=/root/openwrt/trunk

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" CTags的设定 
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" " 按照名称排序 
let Tlist_Sort_Type = "name" 
"
" " 在右侧显示窗口 
let Tlist_Use_Left_Window = 1 
"
" " 压缩方式 
let Tlist_Compart_Format = 1 
"
" " 如果只有一个buffer，kill窗口也kill掉buffer 
let Tlist_Exist_OnlyWindow = 1 
"
" " 不要关闭其他文件的tags 
let Tlist_File_Fold_Auto_Close = 0 
"
" " 不要显示折叠树 
let Tlist_Enable_Fold_Column = 0 

" CTRL-C and CTRL-Insert are Copy
map <C-C> "+y
map <C-Insert> "+y

" CTRL-X and SHIFT-Del are Cut
map <C-X> "+x
map <S-Del> "+x

" CTRL-V and SHIFT-Insert are Paste
map <C-V> "+gP
map <C-V> <C-R>+
" " Use CTRL-Q to do what CTRL-V used to do
map <leader>v <C-V>

set cscopequickfix=s-,c-,d-,i-,t-,e-
