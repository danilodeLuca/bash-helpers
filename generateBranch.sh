#!/bin/bash


#Script para gerar branch para Team2 e dextra 
#deve passar o nome da branch, exemplo 3.49.0_teste

NOME_BRANCH=$1
GERA_TIHUM=$2
TRUNK='TRUNK_URL'
BRANCH_DEXTRA='BRANCH_URL'$NOME_BRANCH
BRANCH_TEAM2='BRANCH_TEAM2_URL'$NOME_BRANCH

checkArgs() {
  local argsNumber=$1
  if [ $argsNumber -lt 1 ]; then
    echo "Usage: $0 <nome_da_branch> [tihum]"
    echo "Exemplos:"
    echo "$0 3.49.0_teste (gera branch somente para a Dextra)"
    echo "$0 3.49.0_teste tihum (gera branch para a Dextra e Team2)"
    exit 1
  fi
}

criarBranchDextra() {
  echo "Gerando branch $BRANCH_DEXTRA"
  svn cp $TRUNK $BRANCH_DEXTRA -m "Criacao branch $NOME_BRANCH para desenvolvimento da Dextra"
}

criarBranchTeam2() {
  if [[ $GERA_TIHUM == "tihum" ]]; then
    echo "Gerando branch $BRANCH_TIHUM"
    svn cp $TRUNK $BRANCH_TIHUM -m "Criacao branch $NOME_BRANCH para desenvolvimento do Team2"
  else
    echo "Branch do team2 NAO foi gerada"
  fi
}

##################################################################################################################
##################################################################################################################

checkArgs $#

criarBranchDextra

criarBranchTeam2
