#!/bin/bash
set -euo pipefail

echo "Building your Fedora edc"

echo "Installing neovim..."
sudo dnf install -y neovim python3-neovim

echo "Skip neovim configuration."

echo "Installing gh..."
# https://github.com/cli/cli/blob/trunk/docs/install_linux.md#dnf5
sudo dnf install dnf5-plugins
sudo dnf config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh

echo "Installing ghostty..."
sudo dnf copr enable scottames/ghostty
sudo dnf install ghostty

echo "Installing opencode..."
curl -fsSL https://opencode.ai/v2/install | bash

echo "Installing ollama..."
curl -fsSL https://ollama.com/install.sh | sh

echo "Install nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.8/install.sh | bash

