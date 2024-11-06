#!/bin/sh
flakeDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")"/.. &> /dev/null && pwd)
cd $flakeDir
nix flake update
