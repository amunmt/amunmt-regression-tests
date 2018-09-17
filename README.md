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

To remove test logs and outputs, run:

    make clean
