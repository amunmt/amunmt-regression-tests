#!/bin/sh -ex

for test in `ls tests`; do
	cd tests/$test
	make 
	cd -
done
