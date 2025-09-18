#!/usr/bin/env bash
set -e

IMAGE=ubuntu-cours-img
NAME=ubuntu-cours
VOL="$HOME/Documents/cours/docker/ubuntu"

# Build the image if it does not exist
if ! docker image inspect "$IMAGE" >/dev/null 2>&1; then
  (cd "$VOL" && docker build -t "$IMAGE" .)
fi

# Run the container if it does not exist, otherwise attach to it
if ! docker ps -a --format '{{.Names}}' | grep -qx "$NAME"; then
  docker run -it --name "$NAME" -v "$VOL":/root "$IMAGE" bash
else
  docker start -ai "$NAME"
fi
