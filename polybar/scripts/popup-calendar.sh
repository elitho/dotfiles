 #!/bin/sh
BAR_HEIGHT=28  # polybar height
BORDER_SIZE=4  # border size from your wm settings
YAD_WIDTH=250  # 222 is minimum possible value
YAD_HEIGHT=193 # 193 is minimum possible value
DATE="$(date +"%A %d.%m, %H:%M:%S")"

case "$1" in
--popup)

    eval "$(xdotool getmouselocation --shell)"
    eval "$(xdotool getdisplaygeometry --shell)"

    # X
    #if [ "$((X + YAD_WIDTH / 2 + BORDER_SIZE))" -gt "$WIDTH" ]; then #Right side
    #    : $((pos_x = WIDTH - YAD_WIDTH - BORDER_SIZE))
    #elif [ "$((X - YAD_WIDTH / 2 - BORDER_SIZE))" -lt 0 ]; then #Left side
    #    : $((pos_x = BORDER_SIZE))
    #else #Center
    #    : $((pos_x = X - YAD_WIDTH / 2))
    #fi

    if [ "$((X))" -gt 2555 ]; then
	: $((pos_x = 3718))
    else 
	: $((pos_x = 1158))
    fi

    # Y
    if [ "$Y" -gt "$((HEIGHT / 2))" ]; then #Bottom
        : $((pos_y = HEIGHT - YAD_HEIGHT - BAR_HEIGHT - BORDER_SIZE))
    else #Top
        : $((pos_y = BAR_HEIGHT + BORDER_SIZE))
    fi

    yad --calendar --undecorated --fixed --close-on-unfocus --no-buttons \
        --width=$YAD_WIDTH --height=$YAD_HEIGHT --posx=$pos_x --posy=$pos_y \
        --title="yad-calendar" --borders=0 >/dev/null &
    ;;
*)
    echo "%{F#7fbef8}%{F-} $DATE"
    ;;
esac
