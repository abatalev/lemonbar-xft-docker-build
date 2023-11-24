#!/bin/sh
docker build -t lemonbar .
ID=$(docker create lemonbar:latest)
docker cp $ID:lemonbar-xft/lemonbar ./lemonbar

