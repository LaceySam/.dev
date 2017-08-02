" get Pathogen going
call pathogen#infect()

" General stuff
syntax on
set et
set number
set mouse=r
set t_Co=256
filetype plugin on

" Highlight any whitespace with a big red bar!
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Color schemes!
colorscheme desertEx

" Get NERDTree going
let NERDTreeWinSize=26
let NERDTreeShowHidden=1
let nerdtree_tabs_open_on_console_startup=1
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Make NERDTree ignore some files
let NERDTreeIgnore = ['\.swp$', '\.pyc$']

" Stop markdown annoying stuff
let vim_markdown_folding_disabled=1

" Set up clipboard, only works if you've installed vim-gtk
vnoremap <C-c> "+y
vnoremap <C-v> "+p
