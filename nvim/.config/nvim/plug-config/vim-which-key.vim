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
    \ '/' : [':History/'              , '/ Search History'],
    \ ';' : [':Commands'              , 'Commands'],
    \ 'a' : [':Ag'                    , 'Text Ag'],
    \ 'b' : [':Buffers'               , 'Open Buffers'],
    \ 'c' : [':Commits'               , 'Commits'],
    \ 'C' : [':BCommits'              , 'Buffer Commits'],
    \ 'e' : [':Explore'               , 'Vim File Explorer'], 
    \ 'g' : [':GFiles'                , 'Git Files'],
    \ 'G' : [':GFiles?'               , 'Nodified Git Files'],
    \ 'h' : [':History'               , 'File History'],
    \ 'H' : [':History:'              , 'Command History'],
    \ 'l' : [':BLines'                , 'Current Buffer Lines'], 
    \ 'L' : [':Lines'                 , 'Open Buffers Lines'],
    \ 'm' : [':Marks'                 , 'Marks'] ,
    \ 'M' : [':Maps'                  , 'Normal Maps'] ,
    \ 'p' : [':Helptags'              , 'Help Tags'] ,
    \ 'P' : [':Tags'                  , 'Project Tags'],
    \ 'r' : [':Rg'                    , 'Text Rg'], 
    \ 's' : [':CocList snippets'      , 'Snippets'],
    \ 'S' : [':Colors'                , 'Color Schemes'],
    \ 't' : [':Files'                 , 'Files'], 
    \ 'T' : [':BTags'                 , 'Buffer Tags'],
    \ 'w' : [':Windows'               , 'Search Windows'],
    \ 'y' : [':Filetypes'             , 'File Types'],
    \ 'z' : [':FZF'                   , 'FZF'],
    \}

" Buffers 
let g:which_key_map.b = {
    \ 'name' : '+buffer' ,
    \ 'd' : [':bd'        , 'Delete-buffer'],
    \ '{' : [':bfirst'    , 'First-buffer'],
    \ '}' : [':blast'     , 'Last-buffer'],
    \ ']' : [':bnext'     , 'Next-buffer'],
    \ '[' : [':bprevious' , 'Previous-buffer'],
    \ }

" Coc Related
let g:which_key_map.c = {
    \ 'name' : '+coc',
    \ 'r' : ['<Plug>(coc-rename)'                   , 'Rename'],
    \ 'f' : ['<Plug>(coc-format-selected)'          , 'Format'],
    \ 's' : ['<Plug>(coc-codeaction-selected)'      , 'Region CodeAction'],
    \ 'a' : ['<Plug>(coc-codeaction)'               , 'CodeAction'],
    \ 'd' : [':CocList diagnostics'                 , 'Diagnostics'],
    \ 'e' : [':CocList extensions'                  , 'List Extensions'],
    \ 'c' : [':CocList commands'                    , 'List Commands'],
    \ 'o' : [':CocList outline'                     , 'File Outline'],
    \ 'w' : [':CocList -I symbols'                  , 'Workspace Search'],
    \ 'j' : [':CocNext'                             , 'Next'],
    \ 'k' : [':CocPrev'                             , 'Previous'],
    \ 'p' : [':CocListResume'                       , 'Recent List'],
    \ 'q' : ['<Plug>(coc-fix-current)'              , 'Quick Fix'],
    \}
