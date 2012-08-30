# Testrunner
Automatic PHPUnit test runner which triggers PHPUnit after every change in watched directory

### Install

```bash

mkdir /usr/share/testrunner/
cp testrunner.sh /usr/share/testrunner/testrunner.sh
ln -nfs /usr/share/testrunner/testrunner.sh /usr/local/bin/testrunner
```

### Usage

``` bash
testrunner <source_code_dir> <unit_tests_dir> [phpunit options]

<source_code_dir>	Source code directory to watch
<unit_tests_dir>	Directory with unit tests to run on every source code change
[phpunit options]	Other optional PHPUnit parameters

```

### Example
Watch directory */srv/www/my_project/* and (on every change in it) run unit tests from */srv/www/my_project/tests*
Also attach PHPUnit configuration file: */srv/www/my_project/tests/phpunit.xml* and set colored output.

```bash
testrunner /srv/www/my_project /srv/www/my_project/tests -c /srv/www/my_project/tests/phpunit.xml --colors

```


