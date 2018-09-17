#/bin/bash -ex

AMUN=../../../amun/build/amun
DIFF=../../scripts/diff.py -p 0.0001

IN=in.1k
BATCH=8

test:
	$(AMUN) -m ../../models/issue50/model.npz -s ../../models/issue50/vocab.en.json -t ../../models/issue50/vocab.de.json --mini-batch $(BATCH) --maxi-batch $(BATCH) -i $(IN) --gpu-threads 1 -b 5 > test.out
	$(DIFF) test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
