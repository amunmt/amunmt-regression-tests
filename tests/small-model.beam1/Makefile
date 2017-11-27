#/bin/bash -ex

AMUN=../../../marian/build/amun

test:
	$(AMUN) -c config.yml -b 1 -n --mini-batch 35 --maxi-batch 100 --gpu-threads 1 <  ../../models/geovedi/data/dev.bpe.en > test.out
	diff test.out test.correct

clean:
	rm -f test.out err
