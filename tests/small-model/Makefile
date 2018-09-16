#/bin/bash -ex

AMUN=../../../amun/build/amun

test:
	$(AMUN) -c config.yml -b 12 -n --mini-batch 8 --maxi-batch 32 --gpu-threads 1 <  ../../models/geovedi/data/dev.bpe.en > test.out
	diff test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
