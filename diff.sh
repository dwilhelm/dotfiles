#!/bin/sh

BASEDIR="home"

for F in `find ${BASEDIR} -type f -not -name '*.orig' | sort`
do
	F=$(echo $F | sed "s;${BASEDIR}/;;")
	echo "Checking $F"
	test -f ~/$F || echo "    Not found $F"
	git diff ~/$F ${BASEDIR}/$F
done

