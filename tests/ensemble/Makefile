#/bin/bash -ex

AMUN=../../../marian/build/amun

test:
	$(AMUN) -c ensemble.yml --gpu-threads 1 --cpu-threads 0 -i in > test.out

	diff test.out test.correct

clean:
	rm -f test.out err
