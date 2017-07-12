#/bin/bash -ex

AMUN=../../../marian/build/amun

test:
	cat valid.src | $(AMUN) -c model.npz.amun.yml -m ../../models/small-vocab/model.iter1000.npz -b 12 -n --mini-batch 10 --maxi-batch 1000 > test.out

	diff test.out test.correct

clean:
	rm -f test.out
