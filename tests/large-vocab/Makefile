#/bin/bash -ex

AMUN=../../../amun/build/amun
DIFF=../../scripts/diff.py -p 0.0001

INPUT=test.tok.es
BATCH=8
BEAM=5

test:
	$(AMUN) --config model.npz.amun.yml  --gpu-threads 1 --cpu-threads 0 --mini-batch $(BATCH) --maxi-batch $(BATCH) -b $(BEAM) < $(INPUT) > test.out
	$(DIFF) test.out test.correct > test.diff

clean:
	rm -f test.out
