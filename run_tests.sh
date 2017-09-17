#!/bin/bash -ex

for test in `ls tests`; do
  cd tests/$test
  time -p make 2> err
  cd -
done
