#!/bin/sh

if [ $(amixer get Capture | tail -n1 | awk -F ' ' '{print $5}' | tr -d '[]%') = 0 ]
then
  exec amixer set Capture 100%
else 
  exec amixer set Capture 0%
fi
