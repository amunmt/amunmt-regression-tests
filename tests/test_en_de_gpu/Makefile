#/bin/bash -ex


AMUN=../../../amunmt/build/bin/amun

test:
	cat test.in |  $(AMUN) -c config.yml > test.out
	diff test.out test.correct

clean:
	rm -f test.out
