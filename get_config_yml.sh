#!/bin/bash

app="$1"

if [ "${app}" = "" ]
	then
	echo "No app provided"
	exit 2
fi

grep ${app} -l $(find ./squads/ -name "*.yaml")|sed 's/:/ /g'|awk '{print $1}'

