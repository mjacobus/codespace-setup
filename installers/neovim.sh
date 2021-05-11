#!/usr/bin/env bash

set -e

sudo apt-get install -y libtool-bin

if [[ ! -d /workspaces/neovim ]]; then
  git clone https://github.com/neovim/neovim /workspaces/neovim
fi

cd /workspaces/neovim

# compile and install neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

pip install neovim
pip2 install neovim
