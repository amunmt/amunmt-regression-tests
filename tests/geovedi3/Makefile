#/bin/bash -ex

AMUN=../../../marian/build/amun

test:
	cat data/valid.en | $(AMUN) -c clf.amun.npz.amun.yml --mini-batch 35 --maxi-batch 100 --gpu-threads 1 > test.out
	diff test.out test.correct

clean:
	rm -f test.out
