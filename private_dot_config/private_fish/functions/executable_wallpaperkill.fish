function wallpaperkill
   rm $(swww query | grep -o "/home/.*")
   WallpaperRandom.sh /dev/null 2>&1
end
