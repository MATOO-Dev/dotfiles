#!/bin/sh
scriptDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
source $scriptDir/buildSystem.sh;
source $scriptDir/buildHome.sh;
