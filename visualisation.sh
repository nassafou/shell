#!/bin/bash

SANSARGS=65
PASTROUVE=66
NONGZIP=67

if [ $# -eq 0 ] # meme effet que if [-z "$1"]
	# $1 peut exister mais doit être vide:
then
	echo "Usage: `basename $0` nomfichier" >&2 # Message d'erreur vers stderr
	exit $SANSARGS
	# Renvoie 65 comme code de sortie du script (code d'erreur)
fi

nomfichier=$1

if [ ! -f "$nomfichier"] 
then
	echo "Fichier $nomfichier introuvable!" >&2 #Message d'erreur vers la sortie stderr
	exit $PASTROUVE
fi

if [ ${nomfichier##*.} != "gz" ]
then
	echo "Le fichier $1 n'est pas compressé avec gzip"
	exit $NONGZIP
fi

zcat $1 | more

exit $?






