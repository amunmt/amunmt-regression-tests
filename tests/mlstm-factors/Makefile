#/bin/bash -ex

AMUN=../../../amun/build/amun

test:
	$(AMUN)  -c config.yml < test.in > test.out
	diff test.out test.correct

clean:
	rm -f test.out err
