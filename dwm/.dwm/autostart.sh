#!/bin/sh

~/cloud/Linux/scripts/battcheck start &
prime-offload &
dwmblocks &
libinput-gestures-setup start &
xwallpaper --zoom ~/cloud/Pictures/Wallpaper/wallhaven-j319dq.png &
dunst &
picom &
redshift-gtk & 
udiskie -Asm nested &
nm-applet &
if [ `pidof owncloud ` ]; then
	killall owncloud
fi
sleep 5
owncloud &
