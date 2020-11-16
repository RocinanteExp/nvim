"{ Global Variable

"{{ Custom variables
let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')
"}}

"{{ Builtin variables
" Disable Python2 support
let g:loaded_python_provider=0

let g:did_install_default_menus = 1  " do not load menu

" Path to Python 3 interpreter (must be an absolute path), make startup
" faster. See https://neovim.io/doc/user/provider.html.
if executable('python')
   if g:is_win
    let g:python3_host_prog=substitute(exepath('python'), '.exe$', '', 'g')
  elseif g:is_linux || g:is_mac
    let g:python3_host_prog=exepath('python')
  endif
else
  echoerr 'Python 3 executable not found! You must install Python 3 and set its PATH correctly!'
endif

" Custom mapping <leader> (see `:h mapleader` for more info)
let mapleader = ','
"}}
"}
