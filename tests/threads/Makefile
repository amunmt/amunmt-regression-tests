#/bin/bash -ex

AMUN=../../../marian/build/amun

INPUT=input.tc.1.bpe
BATCH=20
MAXIBATCH=100
BEAM=40

test:

	$(AMUN) --config config.yml  --gpu-threads 1 --cpu-threads 0 --mini-batch $(BATCH) --maxi-batch $(MAXIBATCH) -b $(BEAM) < $(INPUT) > test.out

	diff test.out test.correct

clean:
	rm -f test.out err
