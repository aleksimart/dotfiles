" TODO: Configure the better names for all the functions that I use
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {} " Define a separator let g:which_key_sep = '→'
" set timeoutlen=100

" No floating window
let g:which_key_use_floating_win = 0


" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Register which key map
call which_key#register('<Space>', "g:which_key_map")

let g:which_key_map['y'] = ['\"+y'                , 'Global Yank']
let g:which_key_map['p'] = ['\"+p'                , 'Global Paste']
let g:which_key_map['P'] = ['\"+P'                , 'Global Paste Above']
let g:which_key_map['v'] = [':vsplit'              , 'Vertical Split']
let g:which_key_map['='] = [ '<C-W>='                             , 'balance windows' ]

" Searching
let g:which_key_map.s = {
    \ 'name' : '+search',
    \ 'L' : [':Lines'             , 'File Line Search'],
    \ 'l' : [':BLines'            , 'Buffer Line Search'], 
    \ 't' : [':Files'             , 'File Search'], 
    \ 'T' : [':Explore'             , 'Vim File Explorer'], 
    \ 'g' : [':Rg'                , 'Line Search'], 
    \ 'B' : [':Buffers'           , 'Buffer Search'],
    \}

" let g:which_key_map['L'] = [':Lines'             , 'File Line Search']
" let g:which_key_map['l'] = [':BLines'            , 'Buffer Line Search']
" let g:which_key_map['t'] = [':Files'             , 'File Search']
" let g:which_key_map['g'] = [':Rg'                , 'Line Search']
" let g:which_key_map['B'] = [':Buffers'           , 'Buffer Search']

let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ 'd' : [':bd'        , 'Delete-buffer'],
      \ '{' : [':bfirst'    , 'First-buffer'],
      \ '}' : [':blast'     , 'Last-buffer'],
      \ ']' : [':bnext'     , 'Next-buffer'],
      \ '[' : [':bprevious' , 'Previous-buffer'],
      \ }

let g:which_key_map.c = {
    \ 'name' : '+coc',
    \}
