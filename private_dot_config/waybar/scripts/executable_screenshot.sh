#!/usr/bin/env bash

date=$(date "+%Y-%m-%d-%H-%M-%S-%Z" | sed 's/-CEST/.png/g')
dst=~/Images/Screenshots/
hyprshot -o $dst -f "screenshot-$date" -m region
