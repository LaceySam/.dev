" Install vim plugin manager
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'rafi/awesome-vim-colorschemes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'EdenEast/nightfox.nvim'
Plug 'python-mode/python-mode', { 'for': 'python'}
Plug 'honza/dockerfile.vim'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'hashivim/vim-terraform'
Plug 'terrastruct/d2-vim'

call plug#end()

" General stuff
syntax on
set et
set number
set mouse=a
set t_Co=256
filetype plugin on

" Color schemes!
set background=dark
colorscheme PaperColor

" Get NERDTree going
let NERDTreeWinSize=26
let NERDTreeShowHidden=1
let nerdtree_tabs_open_on_console_startup=1
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Make NERDTree ignore some files
let NERDTreeIgnore = ['\.swp$', '\.pyc$', '__pycache__']

" Stop markdown annoying stuff
let vim_markdown_folding_disabled=1

" Set up clipboard, only works if you've installed vim-gtk
vnoremap <C-c> "+y
vnoremap <C-v> "+p
