#!/bin/sh -ex

rm -f err

for test in `ls tests`; do
	cd tests/$test
	make 2>> err
	cd -
done
