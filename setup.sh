#!/bin/sh

# (oh-my) zsh
cp $(pwd)/zsh/.zshrc $HOME/.zshrc
cp $(pwd)/zsh/.zprofile $HOME/.zprofile
cp $(pwd)/zsh/damus.zsh-theme $ZSH_CUSTOM/themes/damus.zsh-theme

# Xresources
cp $(pwd)/Xresources/.Xresources $HOME/.Xresources

# dwm
cp -r $(pwd)/dwm $HOME/.dwm

# config dir
cp -r $(pwd)/config/i3 $HOME/.config/
cp -r $(pwd)/config/i3status $HOME/.config/
cp -r $(pwd)/config/nvim $HOME/.config/
cp -r $(pwd)/config/dunst $HOME/.config/
cp -r $(pwd)/config/sxiv $HOME/.config/
cp -r $(pwd)/config/tmux $HOME/.config/
cp $(pwd)/config/redshift.conf $HOME/.config/redshift.conf

