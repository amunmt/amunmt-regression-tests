#/bin/bash -ex

AMUN=../../../marian/build/amun

INPUT=test.tok.es
BATCH=100
BEAM=5

test:
	#$(AMUN) --config model.npz.amun.yml  --gpu-threads 1 --cpu-threads 0 --mini-batch $(BATCH) --maxi-batch $(BATCH) -b $(BEAM) < $(INPUT) > test.out
	cat valid.src | $(AMUN) -c model.npz.amun.yml -m ../../models/small-vocab/model.iter1000.npz -b 12 -n --mini-batch 10 --maxi-batch 1000 > test.out

	diff test.out test.correct

clean:
	rm -f test.out
