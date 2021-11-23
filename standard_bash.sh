#!/bin/bash

# Die ersten beiden Zeichen oben #! besagen, dass die Datei mit dem Programm "bin/bash" ausgefuehrt werden sollen

set -o nounset      # identisch mit set -u
                    # verhindert das Derefenzieren von ungesetzten Variablen, das Programm bricht in einem solchen Fall ab

# Spezielle Variablen
$0                  # Name, mit dem das Programm aufgerufen wurde
$1, $2, $3, ..., ${11}, ${12}, ...     # uebergebene Argumente beim Programmaufruf
shift 1             # setzt $0=$1, $1=$2, ...; das letzte Argument wird geloescht (bzw. im vorherigen gespeichert)
set -- Arg1_neu, Arg2_neu # mit set lassen sich die Argumente neu setzen

text="Guten Tag"    # Variable initialiseren, OHNE Leerzeichen vor dem Gleichheitszeichen!!!
echo $text



# vor der ersten Ausfuehrung der Datei folgende Schritte umsetzen:
# chmod +x standard_bash.sh         # der Datei Ausfuehrungsrechte geben
# ls -l standard_bash.sh            # Check, ob Ausfuehrungsrechte gesetzt wurden
# ./standard-script.sh              # Skript starten