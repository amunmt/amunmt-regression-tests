#!/bin/bash -ex

if [ $# -eq 0 ]; then
    TESTS='tests/*'
else
    TESTS=$@
fi

if [ ! -s ../amun/build/amun ]; then
  echo "Could not find amun executable: ../amun/build/amun"
  exit 1
fi

for test in `ls -d $TESTS`; do
  cd $test
  time -p make -i 2> err
  cd -
done
