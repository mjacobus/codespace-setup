#!/usr/bin/env bash

set -e

ln -s /workspaces/codespace-setup/config/.bashrc.local ~/.bashrc.local

echo "source ~/.bashrc.local" >> ~/.bashrc
