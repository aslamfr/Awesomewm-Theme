#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run pacman -S kitty
run pacman -S picom
run pacman -S polybar
run pacman -S pulseaudio
run pacman -S brightnessctl
