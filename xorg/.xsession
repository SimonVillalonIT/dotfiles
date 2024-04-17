#!/bin/bash
#
# Your Xsession configuration
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# Start your programs
setxbmap us &
xcompmgr &
dwmblocks &
xwallpaper --zoom ~/.config/wallpaper/wallhaven-85k2po.jpg
wal -i ~/.config/wallpaper/wallhaven-85k2po.jpg
exec dwm
