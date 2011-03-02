#!/bin/sh

for F in `find . -path ./.hg -prune -o -type f -not -name 'install.*' -print`
do
	cp $F ~
done
