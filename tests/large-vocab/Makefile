#/bin/bash -ex

AMUN=../../../amun/build/amun

INPUT=test.tok.es
BATCH=8
BEAM=5

test:
	$(AMUN) --config model.npz.amun.yml  --gpu-threads 1 --cpu-threads 0 --mini-batch $(BATCH) --maxi-batch $(BATCH) -b $(BEAM) < $(INPUT) > test.out
	diff test.out test.correct > test.diff

clean:
	rm -f test.out
