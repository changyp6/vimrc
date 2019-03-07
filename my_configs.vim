""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable Line Number
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Type Manipulation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => make.inc section
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile make.inc set filetype=make

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => *.acs section
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.acs set filetype=lua

set gfn=Go\ Mono\ for\ Powerline\ 10,Hack\ 10,Source\ Code\ Pro\ 10

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable missing header file error
let g:syntastic_c_remove_include_errors = 1

" Disable include search
let g:syntastic_c_no_include_search = 1

map <leader>t2 :set tabstop=2  shiftwidth=2  softtabstop=2<CR>
map <leader>t4 :set tabstop=4  shiftwidth=4  softtabstop=4<CR>
map <leader>t8 :set tabstop=8  shiftwidth=8  softtabstop=8<CR>
map <leader>t0 :set tabstop=16 shiftwidth=16 softtabstop=16<CR>
