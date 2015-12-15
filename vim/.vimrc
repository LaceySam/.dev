" get Pathogen going
call pathogen#infect()

" General stuff
syntax on
set et
set number
set mouse=a
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
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Make NERDTree ignore some files
let NERDTreeIgnore = ['\.swp$', '\.pyc$']

" Stop markdown annoying stuff
let vim_markdown_folding_disabled=1
