#!/bin/bash

#chaine=23skidoo1

#echo ${chaine:2:4}

#echo 

#echo | awk '{print substr("'"${chaine}"'",3,4)}'
#exit 0

# afficher les noms de tous les utilisateurs 

NN=$(cat fich1)


#echo $NN
set $NN

echo "$NN" | awk 'BEGIN { FS=":"} {print $1 "\t" $5 }'

