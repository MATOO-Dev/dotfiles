#!/bin/sh
scriptDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
$scriptDir/updateFlake.sh
$scriptDir/buildAll.sh
