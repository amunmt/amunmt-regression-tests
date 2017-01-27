#/bin/bash -ex


AMUN=/fs/zisa0/tomaszd/codes/amunmt_batch/build/bin/amun

test:
	cat test1000.in |  $(AMUN) -c config.yml > test.out
	diff test.out test.correct

clean:
	rm -f test.out
