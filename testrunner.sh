#!/bin/bash

if [ $1 ] && [ $2 ]; then
    while :; do
        FPL=`expr length $1`
	SPL=`expr length $2`

	AP=$@
	PU=`echo ${AP:$FPL} | sed 's/^ *//g'`
	PU=`echo ${PU:$SPL}| sed 's/^ *//g'`
        inotifywait -e modify,create -r $1
        phpunit $PU $2 
    done
else
    echo "Usage: testrunner <source_code_dir> <unit_tests_dir> [phpunit options]"
    echo ""
    echo "<source_code_dir>	Source code directory to watch"
    echo "<unit_tests_dir>	Directory with unit tests to run on every source code change"
    echo "[phpunit options]	Other optional PHPUnit parameters"
fi
