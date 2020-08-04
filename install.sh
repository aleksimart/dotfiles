#!/bin/bash

sudo pacman -S stow

# vim
sudo pacman -S neovim wl-clipboard

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

stow -t ~ nvim
stow -t ~ zsh
stow -t ~ i3
stow -t ~ i3blocks

