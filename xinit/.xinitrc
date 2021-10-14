[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# set WM to non-reparenting for java applications
export _JAVA_AWT_WM_NONREPARENTING=1

# apply correct qt theme
export QT_QPA_PLATFORMTHEME=qt5ct

# gnome-keyring and ssh
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# gpg and vi 
export GPG_TTY="tty"

# start wm
exec dwm
