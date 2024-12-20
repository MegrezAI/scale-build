#!/bin/sh

if [ "$(tty)" = "/dev/tty1" ]; then
    export DISPLAY=:0

    echo "Press ESC key to enter shell..."
    if read -s -n 1 -t 3 key && [ "$key" = $'\e' ]; then
        echo "Entering shell mode"
    else
        exec startx /usr/bin/python3 -m truenas_installer
    fi
fi