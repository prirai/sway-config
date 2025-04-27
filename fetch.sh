#!/bin/bash

folders=(
  alacritty
  fish
  mako
  nano
  networkmanager-dmenu
  swayosd
  sway
  swaylock
  swayr
  waybar
  wofi
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
