function fav_wallpaper
    cp $(swww query | grep -o "/home/.*") /home/dennis/Pictures/Fav_wallpapers &&
    echo Added $(swww query | grep -o "/home/.*") to Fav_wallpapers folder. 
end
