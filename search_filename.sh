#!/bin/sh
X='word1\|word2\|word3\|word4\|word5'
sed -e "
/$X/!d
/$X/{
     s/\($X\).*/\1/
     s/.*\($X\)/\1/
     q
    }" $1
