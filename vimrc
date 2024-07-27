install nerdcommenter using vim8+ packages
set tabstop=4
set shiftwidth=4
set noexpandtab
%retab!
set autoindent
set ruler
set showcmd
set incsearch
set number
set relativenumber
set cino+=L0
filetype plugin on
let mapleader=","
map <C-S> :w <bar> !g++ code.cpp -o code && ./code<CR>
map <C-P> :w <bar> !python3 code.py<CR>
map <C-a> <esc>ggVG<CR>
set belloff=all
" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
