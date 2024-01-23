#!/bin/sh
yad --title="Keybindings:" \
    --no-buttons \
    --center \
    --geometry=400x350-15-400 \
    --list \
    --text-align=center \
    --column=Key \
    --column=Description \
    --column=Command \
    " +enter" "Terminal" "kitty" \
    " +d" "Application Menu" "wofi" \
    " +l" "Lock" "swaylock" \
    " +o" "   Open Firefox" "firefox" \
    " +e" "   Open Files" "nautilus" \
    " +q" "Close focused app" "kill" \
    "Print" "Screenshot" "hyprshot" \
    " +m" "Power-menu" "wlogout" \
    "" "" "" \
    "" "" "" \
    " +t" "This help tool" "yad" \
    "Esc" "Close this app" ""
