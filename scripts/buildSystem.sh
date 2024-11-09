#!/bin/sh
set -e
flakeDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")"/.. &> /dev/null && pwd)
sudo nixos-rebuild switch --flake $flakeDir#system;
# nh os switch $dirname --hostname system
