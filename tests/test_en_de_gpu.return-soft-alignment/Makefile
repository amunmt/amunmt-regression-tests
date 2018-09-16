#/bin/bash -ex


AMUN=../../../amun/build/amun

test:
	cat test.in |  $(AMUN) -c config.yml --return-soft-alignment --mini-batch 64 --maxi-batch 64 > test.out
	diff test.out test.correct

clean:
	rm -f test.out err
