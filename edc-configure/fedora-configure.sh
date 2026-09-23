#!/bin/bash

echo "Building your Fedora edc"

echo "Installing neovim..."
sudo dnf install -y neovim python3-neovim

echo "Skip neovim configuration."

echo "Installing gh..."
# https://github.com/cli/cli/blob/trunk/docs/install_linux.md#dnf5
sudo dnf install dnf5-plugins
sudo dnf config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh


