#!/bin/bash
list=("0xff3b93de" "0xff3b93de" "0xff306dcb" "0xff1c7eb0" "0xff218fef" "0xff2266a4" "0xff17515c" "0xff027ba7" "0xff16a7e6" "0xff5b9fea" "0xff00008b" "0xff294d75")

function random_hex() {
   random_hex=${list[$RANDOM % ${#list[@]}]}
    echo $random_hex
}

# rainbow colors only for active window
hyprctl keyword general:col.active_border $(random_hex)  $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex)  270deg

# rainbow colors for inactive window (uncomment to take effect)
#hyprctl keyword general:col.inactive_border $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) 270deg
