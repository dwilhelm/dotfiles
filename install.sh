#!/bin/sh

for F in `find . -path '*/.hg/*' -o -type f -print`
do
	cp $F ~
done
