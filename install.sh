#!/bin/bash

function prepare() {
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  git clone https://github.com/ogranadalob/tmux-config /tmp/tmux 
  cp /tmp/tmux/tmux.conf ~/.tmux.conf 
  cp /tmp/tmux/bash_functions.sh ~/.bash_functions.sh
  echo "## Bash util functions" >> ~/.zshrc
  echo "source ~/.bash_functions.sh" >> ~/.zshrc
  echo "## -------------------" >> ~/.zshrc
  rm -Rf /tmp/tmux
}

prepare

