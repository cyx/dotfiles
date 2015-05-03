#!/bin/bash

# for elementary OS:
# - change /usr/share/xsessions/pantheon.desktop
#   to exec /home/user/.xsession instead.
# - use this file in ~/.xsession (make sure it's
#   executable)
synclient TouchpadOff=1
gnome-session --session pantheon
