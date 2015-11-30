call pathogen#infect()
autocmd bufreadpre GIT_COMMIT setlocal textwidth=70 colorcolumn=70
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

set guifont=Sauce\ Code\ Powerline\ ExtraLight

" Get NERDTree going
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
