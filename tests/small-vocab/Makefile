#/bin/bash -ex

AMUN=../../../amun/build/amun
DIFF=../../scripts/diff.py -p 0.0001

test:
	cat valid.src | $(AMUN) -c model.npz.amun.yml -m ../../models/small-vocab/model.iter1000.npz -b 12 -n --mini-batch 8 --maxi-batch 32 > test.out
	$(DIFF) test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
