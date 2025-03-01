function u --wraps='sudo apt update && sudo apt upgrade && cargo install-update -a' --description 'alias u=sudo apt update && sudo apt upgrade && cargo install-update -a'
  sudo apt update && sudo apt upgrade && cargo install-update -a $argv
        
end
