#/bin/bash -ex

AMUN=../../../amun/build/amun
DIFF=../../scripts/diff.py -p 0.002

test:
	$(AMUN) -c config.yml --max-length-multiple 3 > test.out
	$(DIFF) test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
