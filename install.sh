#!/bin/bash

function prepare() {
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  git clone https://github.com/ogranadalob/tmux-config /tmp/tmux 
  cp /tmp/tmux/tmux.conf ~/tmux.conf
}

prepare

