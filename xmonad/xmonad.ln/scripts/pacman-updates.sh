#!/usr/bin/env bash

COUNT=`checkupdates | wc -l`

if [ "$COUNT" -gt 0 ]; then
  echo "<fc=#b32d47><icon=/home/jorge/.xmonad/icons/pacman.xbm/></fc> $COUNT"
else
  echo
fi
