#/bin/bash -ex

AMUN=../../../amun/build/amun
DIFF=../../scripts/diff.py -p 0.0001

INPUT=input.tc.1.bpe
BATCH=8
MAXIBATCH=8
BEAM=40

test:
	$(AMUN) --config config.yml  --gpu-threads 1 --cpu-threads 0 --mini-batch $(BATCH) --maxi-batch $(MAXIBATCH) -b $(BEAM) < $(INPUT) > test.out
	$(DIFF) test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
