" Shortcut for faster save and quit
" why <C-U>? see https://stackoverflow.com/questions/13830874/why-do-some-vim-mappings-include-c-u-after-a-colon
nnoremap <silent> <leader>w :<C-U>update<CR>
" quit
nnoremap <silent> <leader>q :<C-U>q<CR>

" Edit and reload init.vim quickly
" <bar>? https://vi.stackexchange.com/questions/2286/what-does-bar-mean
nnoremap <silent> <leader>ev :<C-U>tabnew $MYVIMRC <bar> tcd %:h<CR>
nnoremap <silent> <leader>sv :<C-U>silent update $MYVIMRC <bar> source $MYVIMRC<CR>

" Go to start or end of line easier
nnoremap H ^
xnoremap H ^
nnoremap L g_
xnoremap L g_

" Continuous visual shifting (does not exit Visual mode), `gv` means
" to reselect previous visual area, see https://superuser.com/q/310417/736190
xnoremap < <gv
xnoremap > >gv

" Change text without putting it into the vim register, a sdasdasda
" see https://stackoverflow.com/q/54255/6064933
" broken???
nnoremap c "_c
nnoremap C "_C
nnoremap cc "_cc
xnoremap c "_c

" description: 
" ctrl + j move up a window 
" ctrl + k move down a window 
" ctrl + h move left a window 
" ctrl + l move right a window 
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
