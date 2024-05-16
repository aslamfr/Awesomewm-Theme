#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run killall polybar
run picom --config $HOME/.config/picom.conf
run polybar 