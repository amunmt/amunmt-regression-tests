#/bin/bash -ex


AMUN=../../../marian/build/amun

test:
	cat test.in |  $(AMUN) -c config.yml --n-best yes --mini-batch 64 --maxi-batch 640 > test.out
	diff test.out test.correct

clean:
	rm -f test.out err
