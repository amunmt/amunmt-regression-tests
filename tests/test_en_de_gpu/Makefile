#/bin/bash -ex

AMUN=../../../amun/build/amun
DIFF=../../scripts/diff.py -p 0.0001

test:
	cat test.in |  $(AMUN) -c config.yml > test.out
	$(DIFF) test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
