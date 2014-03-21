#!/bin/bash

if [[ -n "$1" && -n "$2" ]]; then
  ffmpeg -i $1 -pix_fmt rgb24 /tmp/temp.gif
  convert -layers Optimize /tmp/temp.gif $2
  rm /tmp/temp.gif
else
  echo "proper usage: gif-ify <input_movie.mov> <output_file.gif>. You DO need to include extensions."
fi

