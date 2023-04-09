#!/bin/sh

if [ $(amixer get Capture | tail -n1 | awk -F ' ' '{print $5}' | tr -d '[]%') = 0 ]
then
  echo "" # Muted Icon (Install Some icon pack like feather, nerd-fonts)
else
  echo "" # Unmuted Icon (Install Some icon pack like feather, nerd-fonts)
fi
