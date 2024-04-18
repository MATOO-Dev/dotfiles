#!/bin/sh
flakeDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")"/.. &> /dev/null && pwd)
nix flake update $flakeDir;
