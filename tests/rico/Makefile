#/bin/bash -ex

AMUN=../../../marian/build/amun

test:
	$(AMUN) -c amun.yml --gpu-threads 1 --cpu-threads 0 -i in.10k > test.out

	diff test.out test.correct

clean:
	rm -f test.out
