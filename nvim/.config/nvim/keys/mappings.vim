 " Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
" Note that alt l is locking the screen, change later
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
" inoremap <leader>u <ESC>viwUi  " This really slows down the space
nnoremap <leader>u viwU<Esc>

" TAB in general mode will move to text buffer
"nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
"nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
"nnoremap <C-s> :w<CR>
" Alternate way to quit
"nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
"nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Make enter insert a new line after the current line and shift-enter insert a new line before the current line, all without entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"nnoremap <Leader>o o<Esc>^Da
"nnoremap <Leader>O O<Esc>^Da

"let mapleader=" "
" noremap <leader>y "+y
" noremap <leader>p "+p
" noremap <leader>P "+P
" noremap <leader>P "+P

" Tabs
" nnoremap <A-h> gT
" nnoremap <A-l> gt
