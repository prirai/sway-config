#!/bin/bash

options=(
    "File Manager (Dolphin)\0icon\x1fsystem-file-manager"
    "Text Editor (Nano)\0icon\x1faccessories-text-editor"
    "Web Browser (Firefox)\0icon\x1fweb-browser"
    "Terminal Multiplexer (Zellij)\0icon\x1futilities-terminal"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -p "Launch application" -theme waybar)

case "$choice" in
    "File Manager (Dolphin)") dolphin ;;
    "Text Editor (Nano)") alacritty -e nano ;;
    "Web Browser (Firefox)") firefox ;;
    "Terminal Multiplexer (Zellij)") alacritty -e zellij ;;
esac
