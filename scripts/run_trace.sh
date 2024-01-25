#!/usr/bin/env bash

set -euo pipefail

# file locator
SCRIPT_DIR=$(dirname "$(realpath -e "${BASH_SOURCE[0]:-$0}")")
. "$SCRIPT_DIR/common.sh"

. "$SCRIPT_DIR/workloads.sh"

cd "$SCRIPT_DIR/../eval/driver"

for work in "${WORKLOADS[@]}"; do
	sudo "./$work.sh" trace
done