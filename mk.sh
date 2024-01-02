#!/bin/sh
docker build -f Dockerfile.archlinux-lemonbar -t archlinux-lemonbar .
docker build --no-cache -t lemonbar .
ID=$(docker create lemonbar:latest)
docker cp $ID:lemonbar-xft/lemonbar ./lemonbar
mv ~/.local/bin/lemonbar ~/.local/bin/lemonbar-old 
cp ./lemonbar ~/.local/bin/

