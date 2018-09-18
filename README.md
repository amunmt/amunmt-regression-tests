# Amun regression tests

## Structure
 * `models` -- test models
 * `tests` -- tests

## Getting models
To download test models, run:

    make models

## Running tests
First, clone and compile [https://github.com/marian-nmt/amun](amun) into `../amun/build/amun`, then run:

    make test

Specified tests can be run by calling the bash script directly, e.g.:

    bash -v ./run_tests.sh tests/test_en_de_gpu*

To remove test logs and outputs, run:

    make clean

To run tests with Amun compiled in a non-default directory, run:

    make AMUN=<path/to/amun/build/amun> test
    AMUN=<path/to/amun/build/amun> bash -v ./run_tests.sh test/tests_en_de_gpu
