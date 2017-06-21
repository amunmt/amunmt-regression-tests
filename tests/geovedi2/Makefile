#/bin/bash -ex

AMUN=../../../marian/build/amun

test:
	$(AMUN) --config config.yml --gpu-threads 1 --cpu-threads 0 --mini-batch 64 --maxi-batch 320 --beam-size 12 < data/valid.bpe.en.1k > test.out

	diff test.out test.correct

clean:
	rm -f test.out
