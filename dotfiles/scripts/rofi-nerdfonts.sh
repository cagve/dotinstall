#!/usr/bin/bash

# Rofi menu to copy nerdfonts. To modify fonts you should modify .config/fontconfig/fonts.conf 
# if argument is passed, use it as csv, otherwise, look for file relative to dir
[ $# -eq 0 ] && {
    # get location of chars.csv relative to script
    chars_csv="$(dirname $0)/chars.csv"
} || {
    chars_csv="${1}"
}
# if csv file does not exist, error and exit
[ ! -f "${chars_csv}" ] && { echo "${chars_csv} is not a valid file" >&2; exit 1; }

# read in lines from code.csv into array
readarray chars < "${chars_csv}"

# print all codes and names (replacing command with space) and select using rofi
char_entry=$(
    for char in "${chars[@]}";{
        echo ${char/,/ }
    }| rofi -font "Fira Code NerdFont 30" -dmenu)

# If user cancelled rofi, exit
[ -z "${char_entry}" ] && exit

char="${char_entry% *}"
printf ${char}" " | xclip -selection clipboard 
notify-send -t 3000 "Copied ${char} into clipboard" -t 3000

