#!/bin/sh

# zsh
ln -isT $(pwd)/zsh/.zshrc $HOME/.zshrc
ln -isT $(pwd)/zsh/.zprofile $HOME/.zprofile

# link zsh theme to $ZSH_CUSTOM/themes
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
ln -isT $(pwd)/zsh/damus.zsh-theme $ZSH_CUSTOM/themes/damus.zsh-theme

# nvim
ln -isT $(pwd)/nvim/nvim $HOME/.config/nvim

# config dir
ln -isT $(pwd)/config/dunst $HOME/.config/dunst
ln -isT $(pwd)/config/newsboat $HOME/.config/newsboat
ln -isT $(pwd)/config/picom $HOME/.config/picom
ln -isT $(pwd)/config/sxiv $HOME/.config/sxiv
ln -isT $(pwd)/config/tmux $HOME/.config/tmux
ln -isT $(pwd)/config/zathura $HOME/.config/zathura
ln -isT $(pwd)/config/redshift.conf $HOME/.config/redshift.conf

# xinit
ln -isT $(pwd)/xinit/.xinitrc $HOME/.xinitrc

# Xresources
ln -isT $(pwd)/Xresources/.Xresources $HOME/.Xresources

# dwm
ln -isT $(pwd)/dwm $HOME/.dwm

