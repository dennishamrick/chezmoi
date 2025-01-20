function wallustnow
  wallust run $(swww query | grep -o "/home/.*")
end
