#!/bin/bash

if [[ -z "$SSH_TTY" ]]; then
  exit 0
fi

# Grab the host list from the .ssh/config file
HOST=$(grep "Host " ~/.ssh/config | awk '{print $2}' | fzf --prompt="Select server: ")

if [ -n "$HOST" ]; then
  ssh "$HOST"
else
  echo "No host selected. Exiting."
  exit 1
fi
