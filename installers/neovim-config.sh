#!/usr/bin/env bash

set -e

folder=$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim

if [[ ! -d $folder ]]; then
  git clone https://github.com/wbthomason/packer.nvim $folder
fi

if [[ -d /workspaces/neovim-config ]]; then
  cd /workspaces/neovim-config
  git pull origin master
else
  git clone https://github.com/mjacobus/neovim-config /workspaces/neovim-config
fi

cd /workspaces/neovim-config
./install.sh
