#!/bin/bash
PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed"
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed"
fi

case $PACKAGE in
 git) echo "Git: version control system for developers" ;;
 firefox) echo "Firefox: open-source web browser" ;;
 vlc) echo "VLC: media player for all formats" ;;
 apache2) echo "Apache: web server" ;;
esac
