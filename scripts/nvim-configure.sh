#!/usr/bin/env bash
set -euo pipefail

echo ""Installing lazyvim dependencies..."

echo "ripgrep..."
sudo dnf install ripgrep

echo "lazygit..."
sudo dnf copr enable dejan/lazygit
sudo dnf install lazygit

echo "fzf..."
sudo dnf install fzf

echo "fd..."
# https://github.com/sharkdp/fd
sudo dnf install fd-find

echo "luarocks..."
#https://github.com/luarocks/luarocks/blob/main/docs/installation_instructions_for_unix.md
sudo dnf install lua luarocks

echo "Installing lazyvim"
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

