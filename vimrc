set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let g:ycm_confirm_extra_conf = 0
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
call vundle#end()
set number
set relativenumber
colorscheme apprentice
syntax enable
" whitespace highlighting stuff
set list lcs=trail:.,tab:»·
set tabstop=8
set softtabstop=4
set shiftwidth=4
set noexpandtab
set showmatch
set incsearch
set hlsearch
" set smartindent
filetype plugin indent on
nnoremap ,<space> :nohlsearch<CR>
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set laststatus=2
set statusline=                                     " clear on reload
set statusline+=%-3.3n\                             " buffer number
set statusline+=%f\                                 " file name with path
set statusline+=%h%m%r%w                            " flags
set statusline+=%=                                  " right align
set statusline+=%b,0x%-8B\                          " current character (ASCII)
set statusline+=%-24.(%l/%L\ \(%p%%\),\ col\ %c%V%)\ %<%P  "(line number/total lines,column (percentage)) offset
