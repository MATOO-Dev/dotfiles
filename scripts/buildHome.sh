#!/bin/sh
set -e
flakeDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")"/.. &> /dev/null && pwd)
home-manager switch --flake $flakeDir#user;
# nh home switch $directory --configuration user
