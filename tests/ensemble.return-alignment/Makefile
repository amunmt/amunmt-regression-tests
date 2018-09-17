#/bin/bash -ex

AMUN=../../../amun/build/amun
DIFF=../../scripts/diff.py -p 0.0001

test:
	$(AMUN) -c ensemble.yml --gpu-threads 1 --cpu-threads 0 --mini-batch 8 --maxi-batch 32 --return-alignment -i in > test.out
	$(DIFF) test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
