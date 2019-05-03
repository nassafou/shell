#!/bin/bash


FICHIERSAUVE=backup-$(date +%m-%d-%Y)

archive=${1:-$FICHIERSAUVE}
# nous utiliserons par défaut "backup-MM-JJ-AAAA.tar.gz."

tar cvf - `find . -mtime -1 -type f -print` > $archive.tar
gzip $archive.tar
echo "Répertoire $PWD sauvegardé dans un fichier archive \"$archive.tar.gz\"."

exit 0


