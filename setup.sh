#!/bin/sh
# stow to link dotfiles
stow zsh/ --ignore=damus.zsh-theme -t ~/
stow nvim/ -t ~/.config/
stow config/ -t ~/.config/
stow dwm/ -t ~/
stow Xresources/ -t ~/
stow xinit/ -t ~/

# copy zsh theme to /usr/share/oh-my-zsh/custom/themes
# stow not working with sudo 
sudo ln -sf ~/cloud/Linux/dotfiles/zsh/damus.zsh-theme /usr/share/oh-my-zsh/custom/themes/damus.zsh-theme
