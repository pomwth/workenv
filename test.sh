ID=$(date +'%Y%m%d%H%M%S')

#echo $(pwd)
#echo `dirname "$0"`
#echo `dirname "$1"`
#echo $(date +'%y-%m-%d %H:%M:%S')
#echo $(date +'%N')
#echo .zshrc-bck-$ID

#!/bin/bash 
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")
echo $SCRIPTPATH
