#!/usr/bin/env bash

set -e

apt-get install libtool-bin

if [[ ! -d /workspaces/neovim ]]; then
  git clone https://github.com/neovim/neovim /workspaces/neovim
fi

cd /workspaces/neovim

# compile and install neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
make install
