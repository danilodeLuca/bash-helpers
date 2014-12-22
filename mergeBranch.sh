#!/bin/bash

#Script para merge de branch 


START_REVISION=$1
END_REVISION=$2
FROM_BRANCH=$3

checkArgs() {
  local argsNumber=$1
  echo $argsNumber
  if [ $argsNumber -lt 3 ]; then
  	echo "Usage: [START_REVISION] [END_REVISION] [FROM_BRANCH]"
   	echo "Exemplos:"
    echo "34910 3920 BRANCH_URL"
    exit 1
  fi
}

doBranchesMerge() {
	echo "Realizando merge start: $START_REVISION  end: $END_REVISION from:$FROM_BRANCH"
	svn merge -r $START_REVISION:$END_REVISION $FROM_BRANCH .
}
##################################################################################################################
##################################################################################################################

checkArgs $#

doBranchesMerge

