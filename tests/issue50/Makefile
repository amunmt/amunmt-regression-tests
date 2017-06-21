#/bin/bash -ex

AMUN=../../../marian/build/amun

IN=in.1k
BATCH=128

test:

	$(AMUN) -m ../../models/issue50/model.npz -s ../../models/issue50/vocab.en.json -t ../../models/issue50/vocab.de.json --mini-batch $(BATCH) --maxi-batch $(BATCH) -i $(IN) --gpu-threads 1 -b 5 > test.out

	diff test.out test.correct

clean:
	rm -f test.out
