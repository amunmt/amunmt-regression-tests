#/bin/bash -ex

AMUN=../../../amun/build/amun
DIFF=../../scripts/diff.py -p 0.0001

test:
	$(AMUN) -c amun.yml --gpu-threads 1 --cpu-threads 0 -i in.10k > test.out
	$(DIFF) test.out test.correct > test.diff

clean:
	rm -f test.out test.diff err
