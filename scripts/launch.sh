#!/bin/bash
set -euo pipefail

sudo dnf install -y podman podman-docker
podman --version

systemctl --user enable --now podman.socket
systemctl --user status podman.socket

export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/podman/podman.sock"

devcontainer up --workspace-folder . --docker-path podman

devcontainer exec bash
