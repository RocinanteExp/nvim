scriptencoding utf-8

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'lifepillar/vim-gruvbox8'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'

Plug 'neovim/nvim-lspconfig'

Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'jdhao/better-escape.vim'
call plug#end()

lua require("lua_init")


"""""""""""""""""""""""""better-escape settings"""""""""""""""""""

" use jj to escape insert mode.
let g:better_escape_shortcut = 'jk'


"""""""""""""""""""""""""LeaderF settings"""""""""""""""""""
" Do not use cache file
let g:Lf_UseCache = 0
" Refresh each time we call leaderf
" let g:Lf_UseMemoryCache = 0

" Ignore certain files and directories when searching files
let g:Lf_WildIgnore = {
  \ 'dir': ['.git', '__pycache__', '.DS_Store'],
  \ 'file': ['*.exe', '*.dll', '*.so', '*.o', '*.pyc', '*.jpg', '*.png',
  \ '*.gif', '*.svg', '*.ico', '*.db', '*.tgz', '*.tar.gz', '*.gz',
  \ '*.zip', '*.bin', '*.pptx', '*.xlsx', '*.docx', '*.pdf', '*.tmp',
  \ '*.wmv', '*.mkv', '*.mp4', '*.rmvb', '*.ttf', '*.ttc', '*.otf',
  \ '*.mp3', '*.aac']
  \}

" To enable popup mode:
let g:Lf_WindowPosition = 'popup'
" It's better to set
let g:Lf_PreviewInPopup = 1
" show dot files
let g:Lf_ShowHidden = 1

" Search files in popup window
" nnoremap <silent> <leader>ff :<C-U>Leaderf file --popup<CR>

" Grep project files in popup window
" nnoremap <silent> <leader>fg :<C-U>Leaderf rg --no-messages --popup<CR>

" Search tags in current buffer
" nnoremap <silent> <leader>ft :<C-U>Leaderf bufTag --popup<CR>

" Switch buffers
" nnoremap <silent> <leader>fb :<C-U>Leaderf buffer --popup<CR>

" Search recent files
" nnoremap <silent> <leader>fr :<C-U>Leaderf mru --popup<CR>

let g:Lf_ShortcutF = "<leader>ff"
nnoremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
nnoremap <leader>fg :<C-U><C-R>=printf("Leaderf rg --no-messages --popup")<CR><CR>
nnoremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
nnoremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
nnoremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
nnoremap <leader>fr :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>

" noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
" noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>


"""""""""""""""""""""""""UltiSnips settings"""""""""""""""""""

" Trigger configuration. Do not use <tab> if you use YouCompleteMe
" let g:UltiSnipsExpandTrigger='<c-j>'

" Do not look for SnipMate snippets
let g:UltiSnipsEnableSnipMate = 0

" Shortcut to jump forward and backward in tabstop positions
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

" Configuration for custom snippets directory, see
" https://jdhao.github.io/2019/04/17/neovim_snippet_s1/ for details.
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'my_snippets']


"""""""""""""""""""""""""UltiSnips settings"""""""""""""""""""
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
