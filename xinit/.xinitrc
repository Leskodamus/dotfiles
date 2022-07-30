# Apply Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Qt enable gtk use (for dark theme)
export QT_QPA_PLATFORMTHEME=gtk2

# Apply correct qt theme
export QT_QPA_PLATFORMTHEME=qt5ct

# Set WM to non-reparenting for java applications
export _JAVA_AWT_WM_NONREPARENTING=1

# GPG and vi 
export GPG_TTY="tty"

# Start wm
exec dwm

