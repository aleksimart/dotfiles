" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/jplugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    "Themes
    Plug 'morhetz/gruvbox'  "gruvbox theme aka best theme of all time
    Plug 'sainnhe/gruvbox-material'

    " I still got no clue what are these three for lol
    Plug 'vim-utils/vim-man'

    " The GOODNESS for autocompletion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'honza/vim-snippets'   " Premade snips

    Plug 'mbbill/undotree'
    Plug 'mhinz/vim-startify'
    Plug 'yuttie/comfortable-motion.vim' "Sweet stuff for scrolling up and down the file, makes it more smooth


    "Stuff for fuzzy search
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'      " Makes sure to check whole git directory

    Plug 'tpope/vim-commentary' "Easier commenting
    Plug 'tpope/vim-surround'   "Easier surrounding of text objects

    " Status line
    Plug 'vim-airline/vim-airline' 
    Plug 'vim-airline/vim-airline-themes'

    " Better navigation inside a file
    Plug 'justinmk/vim-sneak'
    Plug 'unblevable/quick-scope'

    " Some help for me to not to forget the leader functions
    Plug 'liuchengxu/vim-which-key'
    
    " Git related stuff
    Plug 'airblade/vim-gitgutter'       " Shows the diff and lets you jump between hunks
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " For looks
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'ryanoasis/vim-devicons'

    " Vista
    Plug 'liuchengxu/vista.vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
