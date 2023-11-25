#!/bin/sh

# (oh-my) zsh
ln -isT $(pwd)/zsh/.zshrc $HOME/.zshrc
ln -isT $(pwd)/zsh/.zprofile $HOME/.zprofile
ln -isT $(pwd)/zsh/damus.zsh-theme $ZSH_CUSTOM/themes/damus.zsh-theme

# Xresources
ln -isT $(pwd)/Xresources/.Xresources $HOME/.Xresources

# dwm
ln -isT $(pwd)/dwm $HOME/.dwm

# config dir
ln -isT $(pwd)/config/nvim $HOME/.config/nvim
ln -isT $(pwd)/config/dunst $HOME/.config/dunst
ln -isT $(pwd)/config/sxiv $HOME/.config/sxiv
ln -isT $(pwd)/config/tmux $HOME/.config/tmux
ln -isT $(pwd)/config/redshift.conf $HOME/.config/redshift.conf

