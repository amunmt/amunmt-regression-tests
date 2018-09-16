#/bin/bash -ex

AMUN=../../../amun/build/amun

test:
	$(AMUN) -c ensemble.yml --gpu-threads 1 --cpu-threads 0 --mini-batch 8 --maxi-batch 32 --return-soft-alignment -i in > test.out
	diff test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
