""""""""""""""""""""""""""""""
" Enable Line Number
set nu

""""""""""""""""""""""""""""""
" File Type Manipulation
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => make.inc section
""""""""""""""""""""""""""""""
au BufRead,BufNewFile make.inc set filetype=make

""""""""""""""""""""""""""""""
" => *.acs section
""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.acs set filetype=lua

set gfn=Go\ Mono\ 10,Hack\ 10,Source\ Code\ Pro\ 10

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set fillchars+=stl:\ " this is a comment to prevent problems with the whitespace
"set fillchars+=stlnc:\*" this is a comment to prevent problems with the whitespace

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔐":"🖊️"}',
      \   'modified': '%{&filetype=="help"?"":&modified?"≠":&modifiable?"🌞":"🌝"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }
