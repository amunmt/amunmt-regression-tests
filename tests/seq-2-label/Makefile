#/bin/bash -ex

AMUN=../../../amun/build/amun
DIFF=../../scripts/diff.py -p 0.0001

test:
	cat data/valid.en | $(AMUN) -c clf.amun.npz.amun.yml --mini-batch 8 --maxi-batch 32 --gpu-threads 1 > test.out
	$(DIFF) test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
