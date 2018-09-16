#!/bin/bash -ex

if [ ! -s ../amun/build/amun ]; then
  echo "Could not find amun executable: ../amun/build/amun"
  exit 1
fi

for test in `ls tests`; do
  cd tests/$test
  time -p make -i 2> err
  cd -
done
