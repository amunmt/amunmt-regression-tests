#!/bin/sh -ex

for test in `ls tests`; do
  if [ "$test" != "test_python_bindigs" ]; then
	cd tests/$test
	make 2> err
	cd -
  fi
done
