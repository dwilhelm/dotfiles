#!/bin/sh

for F in `find . -path ./.hg -prune -o -path ./.git -prune -o -type f ! -name 'install.*' -print`
do
	cp $F ~
done
