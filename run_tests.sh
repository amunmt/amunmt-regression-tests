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

success=true

for test in `ls -d $TESTS`; do
  cd $test
  time -p make -i 2> err
  exit_code=$?
  cd -
  if [ $exit_code -ne 0 ]; then
    success=false
  fi
done

$success
