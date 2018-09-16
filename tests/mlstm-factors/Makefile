#/bin/bash -ex

AMUN=../../../amun/build/amun

test:
	$(AMUN)  -c config.yml < test.in > test.out
	diff test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
