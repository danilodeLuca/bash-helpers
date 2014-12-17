#!/bin/bash


#Script para gerar branch para TIHUM e dextra da confidence
#deve passar o nome da branch, exemplo 3.49.0_teste

NOME_BRANCH=$1
GERA_TIHUM=$2
TRUNK='https://dextranet.dextra.com.br/svn/confidence_operacao/trunk/devel/confidence/implementation'
BRANCH_DEXTRA='https://dextranet.dextra.com.br/svn/confidence_operacao/branches/confidence/pre_release_dx_'$NOME_BRANCH
BRANCH_TIHUM='https://dextranet.dextra.com.br/svn/confidence_operacao/branches/confidence/confidencecambio/pre_release_cnf_'$NOME_BRANCH

checkArgs() {
  local argsNumber=$1
  if [ $argsNumber -lt 1 ]; then
    echo "Usage: $0 <nome_da_branch> [tihum]"
    echo "Exemplos:"
    echo "$0 3.49.0_teste (gera branch somente para a Dextra)"
    echo "$0 3.49.0_teste tihum (gera branch para a Dextra e Tihum)"
    exit 1
  fi
}

criarBranchDextra() {
  echo "Gerando branch $BRANCH_DEXTRA"
  svn cp $TRUNK $BRANCH_DEXTRA -m "Criacao branch $NOME_BRANCH para desenvolvimento da Dextra"
}

criarBranchTIHUM() {
  if [[ $GERA_TIHUM == "tihum" ]]; then
    echo "Gerando branch $BRANCH_TIHUM"
    svn cp $TRUNK $BRANCH_TIHUM -m "Criacao branch $NOME_BRANCH para desenvolvimento da TIHUM"
  else
    echo "Branch da TIHUM NAO foi gerada"
  fi
}

##################################################################################################################
##################################################################################################################

checkArgs $#

criarBranchDextra

criarBranchTIHUM