" Set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing but doesn't work with all the languages

set hidden                              " Required to keep multiple buffers open and doesn't require to save first before switching 
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file

set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse

"Opens splits to right and bottom, feels more natural
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files

set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set expandtab                           " Converts tabs to spaces

set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent

set laststatus=0                        " Always display the status line (was previously 2)
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs

set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc

set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %

"Additional things from old .vimrc
set softtabstop =4  "Number of spaces that entering a <TAB> will create
set shiftround      "indents to next multiple of 'shiftwidth'
set backspace  =indent,eol,start    " Backspace working
set display =lastline   " Show as much as possible of last line
set noshowmode        " No need for that thanks to airline 
set showcmd         " Show already typed keys when more are expected
set hlsearch        " Highlights search matches
set incsearch       " Highlight search results while typing
set smartcase       "Case sensitive searching
set ttyfast         " Faster redwrawing
set lazyredraw      " Only redraw when necessary
set wrapscan        " Searches wrap around end-of-file
set report =0       " Always report changed lines
set synmaxcol =200 " Only highlight first 200 columns

"Backup related
"set noswapfile "No annoying file in cache
set undodir=~/.vim/undodir
set undofile

set list                   " Show non-printable characters.

if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

set noerrorbells "This is just an aids sound vim makes when you are and the end of the line
set relativenumber "Relative numbering"
set wildmenu "Graphical autocompletetion of commands when pressing <TAB>

autocmd FileType json syntax match Comment +\/\/.\+$+
