#!/bin/bash

if [ $1 ] && [ $2 ]; then
    while :; do
        inotifywait -e modify -r $1
        phpunit --colors $2 
    done
else
    echo "Usage: testrunner <source_code_dir> <unit_tests_dir>"
    echo ""
    echo "<source_code_dir>	Source code directory to watch"
    echo "<unit_tests_dir>	Directory with unit tests to run on every source code change"
fi
