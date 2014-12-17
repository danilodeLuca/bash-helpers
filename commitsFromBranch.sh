#!/bin/bash

BRANCH=$1

checkArgs() {
  local argsNumber=$1
  if [ $argsNumber -lt 1 ]; then
    echo "Usage: $0 <nome_da_branch> "
    echo "Exemplos:"
    echo "$0 https://dextranet.dextra.com.br/svn/confidence_operacao/branches/confidence/pre_release_dx_3.49.0_darf"
    exit 1
  fi
}

analisaCommitsDaBranch(){
	svn log --stop-on-copy $BRANCH		
}
#################################################################################

checkArgs $#

analisaCommitsDaBranch