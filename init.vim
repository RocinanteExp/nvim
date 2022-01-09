" this configurations are most taken from https://github.com/jdhao/nvim-config

let g:config_files = [
      \ 'globals.vim',
      \ 'options.vim',
      \ 'mappings.vim',
      \ 'plugins.vim',
      \ 'themes.vim'
      \ ]

for s:fname in g:config_files
  execute printf('source %s/init/%s', stdpath('config'), s:fname)
endfor
