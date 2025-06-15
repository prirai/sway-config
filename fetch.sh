#!/bin/bash

folders=(
  alacritty
  copyq
  fish
  mako
  nano
  networkmanager-dmenu
  rofi
  sov
  swayosd
  sway
  swaylock
  waybar
)

for folder in "${folders[@]}"; do
  src="$HOME/.config/$folder"
  if [ -d "$src" ]; then
    cp -r "$src" ./
    echo "Copied $src"
  else
    echo "Folder $src does not exist, skipping."
  fi
done
