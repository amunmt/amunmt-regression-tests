#/bin/bash -ex


AMUN=/fs/zisa0/tomaszd/codes/amunmt_master/build/bin/amun

test:
	cat test.in |  $(AMUN) -c config.yml > test.out
	diff test.out test.correct

clean:
	rm -f test.out
