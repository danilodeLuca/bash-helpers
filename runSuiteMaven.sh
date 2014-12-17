#!/bin/bash

SUITE=$1

checkArgs() {
  local argsNumber=$1
  if [ $argsNumber -lt 1 ]; then
    echo "Usage: $0 <nome_suite> "
    echo "Exemplos:"
    echo "$0 classes-problematicas"
    exit 1
  fi
}

run(){
	mvn test -DskipSelenium=false -DtestSuite=$SUITE
}
#################################################################################

checkArgs $#

run