#!/usr/bin/env bash

screen="  Screen"
area="  Crop"
window="  Window"

rofi_cmd() { rofi -dmenu -theme-str 'listview {columns: 3; lines: 1;}' \
                  -theme-str 'mainbox {children: [ "message", "listview" ];}' \
                  -mesg "Screenshot" \
                  -theme ~/.config/rofi/control.rasi; \
}

run_rofi() { echo -e "$screen\n$area\n$window" | rofi_cmd; }

chosen="$(run_rofi)"
date=$(date "+%Y-%m-%d-%H-%M-%S-%Z" | sed 's/-CEST/.png/g')
dst=~/Images/Screenshots/
case ${chosen} in
    $screen)
        hyprshot -o $dst -f "screenshot-$date" -m output
        ;;
    $area)
        hyprshot -o $dst -f "screenshot-$date" -m region
        ;;
    $window)
        hyprshot -o $dst -f "screenshot-$date" -m window
        ;;
esac
