" description: toogle NERD tree 
noremap <c-n> :NERDTreeToggle<CR>

" description: 
" ctrl + j move up a window 
" ctrl + k move down a window 
" ctrl + h move left a window 
" ctrl + l move right a window 
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

" description: open the $myvimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" description: source the $myvimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

" description: add double quotes around word under cursor 
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" description: convert the current word to uppercase
inoremap <c-u> <esc>viwUea
nnoremap <c-u> viwU

" description: <c><delete> delete word
inoremap <c-bs> <c-w>

" description: insert a new line before or after the cursor
nnoremap <S-Enter> O<Esc>j
nnoremap <CR> o<Esc>k

" description: :Prettier format the entire file
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
