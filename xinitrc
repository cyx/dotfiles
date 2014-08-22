# set the cursor
xsetroot -cursor_name left_ptr

# dvorak, no caps lock
setxkbmap -layout dvorak -option ctrl:nocaps

xrdb ~/.Xresources
feh --bg-center ~/Documents/Pictures/Star\ River.jpg

# our pretty little status bar
xmobar &

# start xmonad
exec xmonad
