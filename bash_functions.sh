#!/bin/bash

function confirm(){
  printf "$1 [y/N] "
  read -r  response
  case "$response" in
    [yY][eE][sS]|[yY])
      return 1
      ;;
    *)
      return 0
      ;;
  esac
}

function grst() {
  confirm "Do you like to reset all changes in your repository?"
  if [ "$?" -gt "0" ]; then
    echo "Removing changes..."
    git reset --hard HEAD
  else
    echo "Reset cancelled..."
  fi
}

function current() {
  echo $(git branch | grep "*" | awk '{print $2}')
}

function gpshoc() {
  git push origin $(current)
}

function gpshocf() {
  git push -f origin $(current)
}

function gploc() {
  git pull origin $(current)
}

function gploc() {
  git pull -f origin $(current)
}

# ALIAS
alias gch="git checkout"
alias gst="git status"
alias glog="git log"
