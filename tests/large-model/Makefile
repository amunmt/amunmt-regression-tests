#/bin/bash -ex

AMUN=../../../amun/build/amun

test:
	$(AMUN) -c amun.yml --gpu-threads 1 --cpu-threads 0 -i in.10k > test.out
	diff test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
