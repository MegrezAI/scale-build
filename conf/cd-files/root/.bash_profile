#!/bin/sh

if [ "$(tty)" = "/dev/tty1" ]; then
    export DISPLAY=:0
    exec startx /usr/bin/python3 -m truenas_installer
fi