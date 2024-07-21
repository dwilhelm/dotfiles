#!/bin/sh

BASEDIR="home"

for F in `find ${BASEDIR} -type f -not -name '*.orig' | sort`
do
	F=$(echo $F | sed "s;${BASEDIR}/;;")
	echo "Checking $F"
	test -f ~/$F || echo "    Not found $F"
	diff --color -U0 ~/$F ${BASEDIR}/$F
done

