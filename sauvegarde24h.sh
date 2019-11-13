#!/bin/bash


printf -v FICHIERSAUVE "backup-%(%m-%d-%Y)T.tar.gz" -1

ARCHIVE=${1:-$FICHIERSAUVE}
# nous utiliserons par défaut "backup-MM-JJ-AAAA.tar.gz."

find -mtime -1 -type f -exec tar -czvf "$ARCHIVE" {} \+
printf "Répertoire '%s' sauvegardé dans un fichier archive '%s.tar.gz'.\n" "$PWD" "$ARCHIVE"
