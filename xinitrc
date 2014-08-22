# set the cursor
xsetroot -cursor_name left_ptr

# dvorak, no caps lock
setxkbmap -layout dvorak -option ctrl:nocaps

xrdb ~/.Xresources
feh --bg-fill ~/docs/pics/japan/kanji.jpg

# disable the annoying touchpad :-p
synclient TouchpadOff=1

# our pretty little status bar
xmobar &

# start xmonad
exec xmonad
