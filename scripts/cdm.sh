#!/bin/sh

choices="unix\nsrc\ndotfiles\ngo"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
    unix) cd ~/src/spring/CS\ 3393/homework/ ;;
    src) cd ~/src/ ;;
    dotfiles) cd ~/src/dotfiles/ ;;
    go) cd ~/go/src/github.com/gtr/ ;;
esac


