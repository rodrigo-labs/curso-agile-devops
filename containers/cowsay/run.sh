#!/bin/sh

echo $PALAVRA
if [ -z $PALAVRA ];then
	PALAVRA="Rodrigo labs"
fi

/usr/games/cowsay $PALAVRA
