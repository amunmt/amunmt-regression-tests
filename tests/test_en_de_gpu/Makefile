#/bin/bash -ex


AMUN=../../../marian/build/amun

test:
	cat test.in |  $(AMUN) -c config.yml > test.out
	diff test.out test.correct > diff.out

clean:
	rm -f test.out
