#!/bin/sh
set -e
flakeDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")"/.. &> /dev/null && pwd)
sudo nixos-rebuild switch --flake $flakeDir#desktop;
# nh os switch $dirname --hostname system
