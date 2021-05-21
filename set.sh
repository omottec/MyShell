#!/bin/bash

# set
# set -u

# echo $a
# set -x

# set -e
set -eo pipefail
foo | echo a
echo bar

