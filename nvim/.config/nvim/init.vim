
" Settings for both terminal nvim and vscodium
"
"
" Classic settings
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
" Mappings
source $HOME/.config/nvim/keys/mappings.vim
" Plugins
source $HOME/.config/nvim/vim-plug/plugins.vim
" Plug specific config
source $HOME/.config/nvim/plug-config/quickscope.vim

if exists('g:vscode')
    " VS Code extension
    source $HOME/.config/nvim/vscode/settings.vim
    source $HOME/.config/nvim/plug-config/easymotion.vim
else
    " Theme/Airline config
    source $HOME/.config/nvim/themes/gruvbox.vim
    " source $HOME/.config/nvim/themes/gruvbox-material.vim
    source $HOME/.config/nvim/themes/airline.vim

    " Plug specific config
    source $HOME/.config/nvim/plug-config/coc.vim
    source $HOME/.config/nvim/plug-config/auto-pairs.vim
    source $HOME/.config/nvim/plug-config/fzf.vim
    source $HOME/.config/nvim/plug-config/start-screen.vim
    source $HOME/.config/nvim/plug-config/undotree.vim
    source $HOME/.config/nvim/plug-config/sneak.vim
    source $HOME/.config/nvim/plug-config/vim-which-key.vim
    source $HOME/.config/nvim/plug-config/vim-gitgutter.vim
    source $HOME/.config/nvim/plug-config/rainbow.vim
    source $HOME/.config/nvim/plug-config/vim-rooter.vim
    source $HOME/.config/nvim/plug-config/vista.vim
    source $HOME/.config/nvim/plug-config/markdown-preview.vim
    source $HOME/.config/nvim/plug-config/floaterm.vim

    " Syntax highlighting enhancements
    source $HOME/.config/nvim/syntax/i3.vim
    " source $HOME/.config/nvim/syntax/java.vim
endif
