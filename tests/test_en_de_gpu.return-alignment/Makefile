#/bin/bash -ex


AMUN=../../../amun/build/amun

test:
	cat test.in |  $(AMUN) -c config.yml --return-alignment --mini-batch 8 --maxi-batch 32 > test.out
	diff test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
