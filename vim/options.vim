scriptencoding utf-8

set fileencoding=utf-8      " File and script encoding settings for vim
set fileformats=unix,dos    " Fileformats to use for new files

" Time in milliseconds to wait for a mapped sequence to complete,
" see https://unix.stackexchange.com/q/36882/221410 for more info
set timeoutlen=300
set updatetime=300  " For CursorHold events

" Disable creating swapfiles, see https://stackoverflow.com/q/821902/6064933
set noswapfile
" Persistent undo even after you close a file and re-open it
set undofile

" General tab settings
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " expand tab to spaces so that tabs are spaces

set number relativenumber  " Show line number and relative line number

set ignorecase smartcase   " Ignore case in general, but become case-sensitive when uppercase is present

" Enable true color support. Do not set this option if your terminal does not
" support true colors! For a comprehensive list of terminals supporting true
" colors, see https://github.com/termstandard/colors and https://gist.github.com/XVilka/8346728.
set termguicolors

set linebreak       " Break line at predefined characters
set showbreak=↪     " Character to show before the lines that have been soft-wrapped
set nowrap          " do no wrap
set lazyredraw      " Do not redraw screen in the middle of a macro. Makes them complete faster.

" Ask for confirmation when handling unsaved or read-only files
set confirm

set completeopt=menuone,noselect    " Show menu even if there is only one item
set pumheight=10                    " Maximum number of items to show in popup menu
set pumblend=10                     " pseudo transparency for completion menu

set virtualedit=block               " Virtual edit is useful for visual block edit

set shiftround

set scrolloff=5     " Minimum lines to keep above and below cursor when scrolling

set history=500     " The number of command and search history to keep

" set signcolumn=auto:2
set signcolumn=yes
" Clipboard settings, always use clipboard for all delete, yank, change, put
" operation, see https://stackoverflow.com/q/30691466/6064933
if !empty(provider#clipboard#Executable())
  set clipboard+=unnamedplus
endif

" External program to use for grep command
if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
  set grepformat=%f:%l:%c:%m
endif
