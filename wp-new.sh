#!/bin/bash

## Files
CONFIG="$HOME/.config/wofi/config"
STYLE="$HOME/.config/wofi/style.css"
COLORS="$HOME/.config/wofi/colors"


DIR=$HOME/pictures/wallpapers
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

swww query || swww-daemon

## Wofi Command
wofi_command="wofi --show dmenu \
			--prompt 'choose..'
			--conf ${CONFIG} --style ${STYLE} --color ${COLORS} \
			--width=300 --height=400 \
			--cache-file=/dev/null \
			--hide-scroll --no-actions \
			--define=matching=fuzzy"

menu(){
printf "1. Cat in Space\n" 
printf "2. Dungeon\n" 
printf "3. best\n" 
printf "4. minecraft\n" 
printf "5. Blue World\n"
printf "6. Fake Reality\n"
printf "7. Cat in space\n"
printf "8. Pink City\n"
printf "9. 5cm Per Second\n"
printf "10. Rainy Village\n"
printf "11. Comets\n"
printf "12. Random Wallpaper\n"
}

main() {
choice=$(menu | ${wofi_command} | cut -d. -f1)
case $choice in
1)
    swww img ~/wals/cat.png --transition-fps 30 --transition-type any --transition-duration 3 ; wal -n -i ~/wals/cat.png ; killall waybar ; waybar 
    return
    ;;
2)
    swww img ~/wals/horror.png --transition-fps 30 --transition-type any --transition-duration 3 ; wal -n -i ~/wals/horror.png ; killall waybar ; waybar
    return
    ;;
3)
    swww img ~/wals/mai-san.png --transition-fps 30 --transition-type any --transition-duration 3 ; wal -n -i ~/wals/mai-san.png ; killall waybar ; waybar
    return
    ;;
4)
    swww img ~/wals/minecraft.png --transition-fps 30 --transition-type any --transition-duration 3 ; wal -n -i ~/wals/minecraft.png ; killall waybar ; waybar
    return
    ;;
5)
    swww img ~/wals/tele.jpg --transition-fps 30 --transition-type any --transition-duration 3 ; wal -n -i ~/wals/tele.jpg ; killall waybar ; waybar
    return
    ;;
6)
    swww img ~/wals/fake_reality.jpg --transition-fps 30 --transition-type any --transition-duration 3 ; wal -n -i ~/wals/fake_reality.jpg ; killall waybar ; waybar
    return
    ;;
7)
    swww img ~/wals/cat.png --transition-fps 30 --transition-type any --transition-duration 3 ; wal -n -i ~/wals/cat.png ; killall waybar ; waybar
    return
    ;;
8)
    swww img ${DIR}/wp8.jpg --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
9)
    swww img ${DIR}/wp9.jpg --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
10)
    swww img ${DIR}/wp10.jpg --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
11)
    swww img ${DIR}/wp11.jpeg --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
12)
    swww img ${DIR}/${RANDOMPICS} --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
esac
}

main
