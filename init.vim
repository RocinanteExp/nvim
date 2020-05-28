set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
set enc=utf-8
set noswapfile
set incsearch

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'

call vundle#end()

" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent

set expandtab        " expand tabs to spaces
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set termguicolors

" enter in normal mode insert a new line without switching to insert mode
nmap <S-Enter> O<Esc>
nmap <Enter> o<Esc>

" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" mappings
nmap <C-n> :NERDTreeToggle<CR>

map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>

set wmh=0

colorscheme gruvbox
set background=dark
