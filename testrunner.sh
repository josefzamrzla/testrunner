#!/bin/bash

if [ $1 ] && [ $2 ]; then
    while :; do
        inotifywait -e modify -r $1
        phpunit --colors $2 
    done
else
    echo "Usage: testrunner <watched_dir> <tests_dir>"
    echo ""
    echo "<watched_dir>	Source code directory to watch"
    echo "<tests_dir>	Directory with unit tests to run on every source code change"
fi
