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

let g:which_key_map['u'] = ['viwU'                                  , 'Upper Case Word']
let g:which_key_map['U'] = [ ':UndotreeToggle'                      , 'Undo Tree']
let g:which_key_map['d'] = ['vU'                                    , 'Upper Case Letter']
let g:which_key_map['y'] = ['\"+y'                                  , 'Global Yank']
let g:which_key_map['p'] = ['\"+p'                                  , 'Global Paste']
let g:which_key_map['P'] = ['\"+P'                                  , 'Global Paste Above']
let g:which_key_map['='] = ['<C-W>='                                , 'balance windows' ]
let g:which_key_map['v'] = [':vsplit'                               , 'Vertical Split']
let g:which_key_map['V'] = [':Vista!!'                              , 'Tag Viewer']
let g:which_key_map['W'] = [':call WindowSwap#EasyWindowSwap()'     , 'Move Window' ]
let g:which_key_map['q'] = [':q'                                    , 'Quit' ]
let g:which_key_map['w'] = [':w'                                    , 'Write' ]
let g:which_key_map['/'] = [':let @/ = ""'                         , 'remove search highlight']


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

" Coc Related Actions
let g:which_key_map.l = {
    \ 'name' : '+lsp',
    \ ';' : ['<Plug>(coc-refactor)'                 , 'Refactor'],
    \ 'a' : ['<Plug>(coc-codeaction)'               , 'Line Action'],
    \ 'A' : ['<Plug>(coc-codeaction-selected)'      , 'Selected Action'],
    \ 'c' : [':CocList commands'                    , 'List Commands'],
    \ 'd' : [':CocList diagnostics'                 , 'Diagnostics'],
    \ 'F' : ['<Plug>(coc-format-selected)'          , 'Format Selected'],
    \ 'f' : ['<Plug>(coc-format)'                   , 'Format Line'],
    \ 'j' : [':CocNext'                             , 'Next Action'],
    \ 'k' : [':CocPrev'                             , 'Previous Action'],
    \ 'n' : ['<Plug>(coc-diagnostic-next)'          , 'Next Diagnostic'],
    \ 'N' : ['<Plug>(coc-diagnostic-next-error)'    , 'Next Error'],
    \ 'l' : ['<Plug>(coc-codelens-action)'          , 'Code Lens'],
    \ 'o' : [':CocList outline'                     , 'File Outline'],
    \ 'p' : ['<Plug>(coc-diagnostic-prev)'          , 'Prev Diagnostic'],
    \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'    , 'Prev Error'],
    \ 'q' : ['<Plug>(coc-fix-current)'              , 'Quick Fix'],
    \ 'r' : ['<Plug>(coc-rename)'                   , 'Rename'],
    \ 's' : [':CocList snippets'                    , 'snippets'],
    \ 'w' : [':CocList -I symbols'                  , 'Workspace Search'],
    \ 'u' : [':CocListResume'                       , 'Recent List'],
    \}

" Coc Jumps and other stuff
let g:which_key_map.c = {
    \ 'name' : '+coc',
    \ '.' : [':CocConfig'                           , 'Config'],
    \ 'd' : ['<Plug>(coc-definition)'               , 'Definition Jump'],
    \ 'D' : ['<Plug>(coc-declaration)'              , 'Declaration Jump'],
    \ 'e' : [':CocList extensions'                  , 'List Extensions'],
    \ 'f' : ['<Plug>(coc-float-jump)'               , 'Float Jump'],
    \ 'h' : ['<Plug>(coc-float-hide)'               , 'Hide Float'],
    \ 'i' : ['<Plug>(coc-implementation)'           , 'Implementation Jump'],
    \ 'o' : ['<Plug>(coc-openlink)'                 , 'Open Link'],
    \ 'r' : ['<Plug>(coc-references)'               , 'Show References'],
    \ 't' : ['<Plug>(coc-type-definition)'          , 'type definition'],
    \ 'u' : [':CocUpdate'                           , 'update CoC'],
    \ 'Z' : [':CocDisable'                          , 'disable CoC'],
    \ 'z' : [':CocEnable'                           , 'enable CoC'],
    \}

" Startify 
let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session'],
      \ 'd' : [':SDelete'         , 'Delete Session'],
      \ 'l' : [':SLoad'           , 'Load Session'],
      \ 's' : [':Startify'        , 'Start Page'],
      \ 'S' : [':SSave'           , 'Save Session'],
      \ }

" Git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'Add All'],
      \ 'A' : [':Git add %'                        , 'Add Current'],
      \ 'b' : [':Git blame'                        , 'Blame'],
      \ 'B' : [':GBrowse'                          , 'Browse'],
      \ 'c' : [':Git commit'                       , 'Commit'],
      \ 'd' : [':Git diff'                         , 'Diff'],
      \ 'D' : [':Gdiffsplit'                       , 'Diff Split'],
      \ 'g' : [':GGrep'                            , 'Git Grep'],
      \ 'G' : [':Gstatus'                          , 'Status'],
      \ 'i' : [':Gist -b'                          , 'Post Gist'],
      \ 'l' : [':Git log'                          , 'Log'],
      \ 'm' : ['<Plug>(git-messenger)'             , 'Message'],
      \ 'p' : [':Git push'                         , 'Push'],
      \ 'P' : [':Git pull'                         , 'Pull'],
      \ 'r' : [':GRemove'                          , 'Remove'],
      \ 'S' : [':!git status'                      , 'Status'],
      \ 'v' : [':GV'                               , 'View Commits'],
      \ 'V' : [':GV!'                              , 'View Buffer Commits'],
      \ }

" Hunk
let g:which_key_map.h = {
      \ 'name' : '+hunk' ,
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'Highlight Hunks'],
      \ 'p' : ['<Plug>(GitGutterPreviewHunk)'      , 'Preview Hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'Next Hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'Prev Hunk'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'Stage Hunk'],
      \ 't' : [':GitGutterSignsToggle'             , 'Toggle Signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'Undo Hunk'],
    \}

" noremap <leader>tl " Terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'Terminal Small'],
      \ 'f' : [':FloatermNew fzf'                               , 'FZF'],
      \ 'g' : [':FloatermNew lazygit'                           , 'Git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'Docker'],
      \ 'l' : [':FloatermSend !!'                               , 'Terminal Last Command'],
      \ 'p' : [':FloatermNew python'                            , 'Python'],
      \ 't' : [':FloatermToggle'                                , 'Toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }

let g:which_key_map.m = {
      \ 'name' : '+markdown' ,
      \ 'p' : ['<Plug>MarkdownPreview'                          , 'Preview'],
      \ 't' : ['<Plug>MarkdownPreviewToggle'                    , 'Toggle'],
      \ 's' : ['<Plug>MarkdownPreviewStop'                      , 'Stop'],
      \ }
