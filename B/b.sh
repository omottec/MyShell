#!/bin/bash
# `pwd`/C/c.sh
# source `dirname $0`/C/c.sh
# `dirname $0`/C/c.sh

# echo `pwd`
# source `dirname $0`/C/c.sh
# `dirname $0`/C/c.sh
# echo `pwd`

# source `dirname $0`/C/c.sh

myPath=`dirname ${BASH_SOURCE[0]}`
echo $myPath
source ${myPath}/C/c.sh
echo $myPath