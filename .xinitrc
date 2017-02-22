#!/bin/bash
#xrdb -merge ~/.Xresources
xmodmap ~/.Xmodmap &
enable-audio
enable-speakers
enable-mic
xrandr --dpi 144 &

case "$2" in
    dwm)
        feh --bg-scale ~/.background.jpg &
        dwmstatus &
        dunst &
        #urxvtd -q -f -o &
        compton -fbczC &
        start-pulseaudio-x11 &
        #redshift &
        xrandr --dpi 144 &
        exec dwm
        exec dunst
        ;;
    xfce)
        urxvtd -q -f -o &
        compton -fbczC &
        start-pulseaudio-x11 &
        redshift &
        exec dbus-launch --auto-syntax --exit-with-session startxfce4
        ;;
    *)
        echo "No WM or DE initialized."
        ;;
esac
