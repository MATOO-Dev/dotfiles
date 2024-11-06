#!/bin/sh
set -e
scriptDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
source $scriptDir/buildSystem.sh;
source $scriptDir/buildHome.sh;
source $scriptDir/autoclean.sh;
