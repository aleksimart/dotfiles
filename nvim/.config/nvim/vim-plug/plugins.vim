" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'tpope/vim-commentary' "Easier commenting

    " Better navigation inside a file
    Plug 'unblevable/quick-scope'
    
    if exists('g:vscode')
        " Easy motion for VSCode
        Plug 'asvetliakov/vim-easymotion'
    else

        ""Plugin for go"
        "Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

        " Auto pairs for '(' '[' '{'
        Plug 'jiangmiao/auto-pairs'

        " Better Syntax Support
        Plug 'sheerun/vim-polyglot'

        "Themes
        Plug 'morhetz/gruvbox'  "gruvbox theme aka best theme of all time
        Plug 'sainnhe/gruvbox-material' "Meh, not worth it

        " The GOODNESS for autocompletion
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'honza/vim-snippets'   " Premade snips
        Plug 'tpope/vim-surround'   "Easier surrounding of text objects

        " Undotree showing all the previous changes, like git 
        Plug 'mbbill/undotree'

        " Nice start screen and sessions
        Plug 'mhinz/vim-startify'

        "Sweet stuff for scrolling up and down the file, makes it more smooth
        Plug 'yuttie/comfortable-motion.vim' 

        "Stuff for fuzzy search
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'      " Makes sure to check whole git directory

        " Status line
        Plug 'vim-airline/vim-airline' 
        Plug 'vim-airline/vim-airline-themes'

        " Better navigation inside a file
        Plug 'justinmk/vim-sneak'

        " Some help for me to not to forget the leader functions and simplify the
        " mappings
        Plug 'liuchengxu/vim-which-key'
        
        " Git related stuff
        Plug 'airblade/vim-gitgutter'       " Shows the diff and lets you jump between hunks
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-rhubarb'
        Plug 'junegunn/gv.vim'
        
        " For looks
        " Plug 'junegunn/rainbow_parentheses.vim'
        Plug 'ryanoasis/vim-devicons'

        " Marks shown on the side
        Plug 'liuchengxu/vista.vim'

        " Markdown realtime preview
        Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  } 

        " Terminal in vim
        Plug 'voldikss/vim-floaterm'

        " Live HTML/CSS editing
        Plug 'turbio/bracey.vim' 

        " Formatter for Haskell
        Plug 'meck/vim-brittany'
    endif

    " A few plugins that I should set up at some point
    "tpope/vim-eunuch 
    "tpop/vim-repeat
    call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
