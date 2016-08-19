#!/bin/bash

PREFIX="$1"
SEQ="$2"

if [ $# -lt 1 ]; then
	echo "$(basename "$0") prefix [starting sequence number]"
	exit 1
fi

echo "Mplayer image capture rename script - @jbuchbinder"
echo " "

for i in shot*.png; do
	# Convert to jpg
	j=${i//png}jpg
	echo -n " * Converting $i -> $j ... "
	convert $i $j
	if [ ! -f $j ] ; then
		echo "[FAIL]"
		continue
	fi
	echo "[ OK ]"

	# Get prefix, and rename
	k=$(echo $j | sed -e "s/shot/${PREFIX}-/;")
	echo -n " * Fixing name $j -> $k ... "
	mv $j $k
	if [ ! -f $k ] ; then
		echo "[FAIL]"
		continue
	fi
	echo "[ OK ]"

	# If we're adjusting sequence numbers...
	if [ "$SEQ" != "" ]; then
		oseq=$( echo $k | cut -d'-' -f2 | cut -d'.' -f1 )
		nseq=$( printf '%04d' $(( $oseq + $SEQ )) )
		l=${PREFIX}-${nseq}.jpg	
		echo -n " * Renumbering $k -> $l ... "
		mv $k $l
		if [ ! -f $l ] ; then
			echo "[FAIL]"
			continue
		fi
		echo "[ OK ]"
	fi
done
