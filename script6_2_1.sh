#!/bin/bash

set -o nounset

echo "Anzahl der übergebenen Argumente: $#"
echo "Scriptname: $0"
echo "\$1=$1 \$3=$3 \$11=$11 \${11}=${11}"

shift 2

echo "Anzahl der verbleibenden Argumente: $#"
echo "\$1=$1"

# Argumente lassen sich innerhalb des Programms neu setzen
set -- bunt der Regenbogen er ist fantastisch farbig ist er \
auch Sommer

echo "Anzahl der Argumente: $#"
echo "\$1=$1 \${11}=${11}"

set -- bunt der Regenbogen
