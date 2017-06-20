#/bin/bash -ex

AMUN=../../marian/build/amun

test:
	$(AMUN) -c config.yml > test.out
	diff test.out test.correct

clean:
	rm -f test.out
