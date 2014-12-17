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
    echo "34910 3920 https://dextranet.dextra.com.br/svn/confidence_operacao/branches/confidence/pre_release_dx_3.49.0_darf"
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

