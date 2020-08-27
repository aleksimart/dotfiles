#!/bin/bash

sudo pacman -S stow

#i3 setup for arch
sudo pacman -S ansible i3  
git clone https://github.com/justmeandopensource/myi3
cd myi3
ansible-playbook -i ansible.cfg setup.yaml   

# vim
sudo pacman -S neovim wl-clipboard

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# kitty
sudo pacman -S kitty kitty-terminfo
# kitty-themes
git clone --depth 1 git@github.com:dexpota/kitty-themes.git ~/.config/kitty/kitty-themes

stow -t ~ nvim
stow -t ~ zsh
stow -t ~ i3
stow -t ~ i3blocks
stow -t ~ add_conf
stow -t ~ kitty
