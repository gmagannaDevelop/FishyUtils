function fish_greeting
  fortune -s | cowsay -f whale 
  echo "PATH :"
  echo $PATH 
  echo ""
  echo "which sudo output : " (which sudo)  | grep /usr/bin/sudo
  echo ""
  #echo "If empty ($safe_sudo) there is no sudo in /usr/local/bin"
  #nvm use default
end
