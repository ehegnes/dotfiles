xrdb -merge ~/.Xresources
xmodmap ~/.Xmodmap
LOCK_EXEC='USER=eric /usr/local/bin/slock'
case "$2" in
    i3)
        start-pulseaudio-x11 &
        sh ~/.fehbg &
        urxvtd -q -f -o &
        xbacklight -set 30 &
        xautolock -time 10 -locker $LOCK_EXEC &
        compton -fbczC --shadow-blue 0.314 --shadow-green 0.224 --backend glx --vsync opengl-swc
        export TERMINAL=/usr/bin/urxvtc
        exec dbus-launch --exit-with-session i3
        ;;
    dwm)
        start-pulseaudio-x11 &
        sh ~/.fehbg &
        urxvtd -q -f -o &
        redshift &
        xbacklight -set 35 &
        compton -fbczC --shadow-blue 0.314 --shadow-green 0.224 --backend glx --vsync opengl-swc
        dwmstatus &
        xautolock -time 10 -locker $LOCK_EXEC &
        dunst &
        exec dbus-launch --sh-syntax --exit-with-session /usr/local/bin/dwm
        ;;
    chromeos)
        exec chromeos
        ;;
    xmonad)
        start-pulseaudio-x11 &
        urxvtd -q -f -o &
        xbacklight -set 30 &
        sh ~/.fehbg &
        xautolock -time 10 -locker $LOCK_EXEC &
        exec dbus-launch --sh-syntax --exit-with-session xmonad
        ;;
    *)
        echo "$2 is not a valid WM"
        ;;
esac
