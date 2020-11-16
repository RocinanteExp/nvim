" required; disable file type detection
filetype off

set rtp+=$HOME/AppData/Local/nvim/bundle/Vundle.vim
call vundle#begin('$HOME/AppData/Local/nvim/bundle/')

" coc extension are installed in
" users\franc\AppData\Local\coc\extensions\node_modules
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
Plugin 'neoclide/coc.nvim', {'pinned': 1}
Plugin 'sheerun/vim-polyglot'
Plugin 'gruvbox-community/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/LeaderF'
" Plugin 'neovim/nvim-lspconfig'

call vundle#end()

filetype plugin indent on 
