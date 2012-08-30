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
testrunner <source_code_dir> <unit_tests_dir>

<source_code_dir>	Source code directory to watch
<unit_tests_dir>	Directory with unit tests to run on every source code change

```

