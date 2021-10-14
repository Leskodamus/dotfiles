#!/bin/sh
# stow to backup dotfiles
stow zsh/ --ignore=damus.zsh-theme -t ~/
stow nvim/ -t ~/.config/
stow config/ -t ~/.config/
stow dwm/ -t ~/
stow Xresources/ -t ~/
stow xinit/ -t ~/

# copy zsh theme to /usr/share/oh-my-zsh/custom/themes
sudo ln -sf ~/cloud/Linux/dotfiles/zsh/damus.zsh-theme /usr/share/oh-my-zsh/custom/themes/damus.zsh-theme

# copy scripts into $HOME/.local/bin
ln -sf ~/cloud/Linux/scripts/battcheck $HOME/.local/bin/battcheck
ln -sf ~/cloud/Linux/scripts/geoip $HOME/.local/bin/geoip
ln -sf ~/cloud/Linux/scripts/lock $HOME/.local/bin/lock
ln -sf ~/cloud/Linux/scripts/sleeplock $HOME/.local/bin/sleeplock
ln -sf ~/cloud/Linux/scripts/myip $HOME/.local/bin/myip
ln -sf ~/cloud/Linux/scripts/record $HOME/.local/bin/record
ln -sf ~/cloud/Linux/scripts/xdisplay $HOME/.local/bin/xdisplay
ln -sf ~/cloud/Linux/scripts/nctf $HOME/.local/bin/nctf
ln -sf ~/cloud/Linux/scripts/toggaudio $HOME/.local/bin/toggaudio
ln -sf ~/cloud/Linux/scripts/todo $HOME/.local/bin/todo
