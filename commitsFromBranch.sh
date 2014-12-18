#!/bin/bash

BRANCH=$1

checkArgs() {
  local argsNumber=$1
  if [ $argsNumber -lt 1 ]; then
    echo "Usage: $0 <nome_da_branch> "
    echo "Exemplos:"
    echo "$0 SVN_URL"
    exit 1
  fi
}

analisaCommitsDaBranch(){
	svn log --stop-on-copy $BRANCH		
}
#################################################################################

checkArgs $#

analisaCommitsDaBranch
