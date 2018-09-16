#/bin/bash -ex

AMUN=../../../amun/build/amun

test:
	$(AMUN) --config config.yml --gpu-threads 1 --cpu-threads 0 --mini-batch 8 --maxi-batch 32 --beam-size 12 < data/valid.bpe.en.1k > test.out
	diff test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
