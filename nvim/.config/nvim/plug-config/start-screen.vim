" Place to save the sessions at
let g:startify_session_dir = '~/.config/nvim/session'
" Specifying how menu will look like
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
" Specify the bookmarks
let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Go',
            \ '~/sh',
            \ '~/java',
            \ ]
"Picture to display at the main screen
let g:startify_custom_header = [
            \'                           _,.-------.,_                                   ',
            \'                       ,;~`             `~;,                               ',
            \'                     ,;                     ;,                             ',
            \'                    ;                         ;                            ',
            \'                   ,`                         `,                           ',
            \'                  ,;                           ;,                          ',
            \'                  ; ;      .           .      ; ;                          ',
            \'                  | ;   ______       ______   ; |                          ',
            \'                  |  `/~"     ~" . "~     "~\`  |                          ',
            \'                  |  ~  ,-~~~^~, | ,~^~~~-,  ~  |                          ',
            \'                   |   |        }:{        |   |                           ',
            \'                   |   l       / | \       !   |                           ',
            \'                   .~  (__,.--" .^. "--.,__)  ~.                           ',
            \'                   |     ---;` / | \ `;---     |                           ',
            \'                    \__.       \/^\/       .__/                            ',
            \'                     V| \                 / |V                             ',
            \'                      | |T~\___!___!___/~T| |                              ',
            \'                      | |`IIII_I_I_I_IIII`| |                              ',
            \'              __      _____|-| ___ ___  _ __ ___   ___                     ', 
            \'              \ \ /\ / / _ \ |/ __/ _ \| `_ ` _ \ / _ \                    ',
            \'               \ V  V /  __/ | (_| (_) | | | | | |  __/                    ',
            \'                \_/\_/ \___|_|\___\___/|_| |_| |_|\___|                    ',
            \'                      |  \,III I I I III,/  |                              ',
            \'                       \   `~~~~~~~~~~`    /                               ',
            \'                         \   .       .   /                                 ',
            \'                           \.    ^    ./                                   ',
            \'                             ^~~~^~~~^                                     ',
            \]
" Additional config
let g:startify_session_delete_buffers = 1       " Let stratify take car of buffers
let g:startify_change_to_vcs_root = 1           " Same idea as with vim-rooter
let g:startify_session_persistence = 1          " Automatically update sessions 
let g:startify_enable_special = 0               " Get rid of empty buffer and quit" Get rid of empty buffer and quit

