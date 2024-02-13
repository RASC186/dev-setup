#!/bin/bash


installPackages()
{
  if ! test -f /bin/vim ; then
    sudo apt -y install vim 
  fi

  if ! test -f /bin/tmux ; then
    sudo apt -y install tmux
  fi
}


setVimSettings()
{
  cp -f ./.vimrc ~/
}


setTmuxSettings()
{
  cp -f ./.tmux.conf ~/

  local localFileContent=$(cat ./.bashrc)
  local homeFileContent=$(cat ~/.bashrc)

  if ! [[ ${homeFileContent} = *${localFileContent}* ]] ; then
    cat ./.bashrc >> ~/.bashrc
  fi
}


# Dev Setup Script

clear
installPackages
setVimSettings
setTmuxSettings
echo "Done!"
