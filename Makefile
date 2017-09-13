#!/bin/bash

dir_guard=@mkdir -p $(@D)
second=$(word 2, $^)
third=$(word 3, $^)
fourth=$(word 4, $^)

all: models

models: $(patsubst %.tgz,%,$(wildcard models/*.tgz))

download_models: models/hieu models/model_en-de models/model_en-fr


%: %.tgz
	tar xvf $< -C models

models/hieu:
	$(dir_guard)
	./scripts/download_models.py -u http://thor.inf.ed.ac.uk/~s0565741/marian-regression-tests/models/geovedi.tgz -w models
	./scripts/download_models.py -u http://thor.inf.ed.ac.uk/~s0565741/marian-regression-tests/models/geovedi2.tgz -w models
	./scripts/download_models.py -u http://thor.inf.ed.ac.uk/~s0565741/marian-regression-tests/models/geovedi3.tgz -w models
	./scripts/download_models.py -u http://thor.inf.ed.ac.uk/~s0565741/marian-regression-tests/models/issue50.tgz -w models
	./scripts/download_models.py -u http://thor.inf.ed.ac.uk/~s0565741/marian-regression-tests/models/large-beam.tgz -w models
	./scripts/download_models.py -u http://thor.inf.ed.ac.uk/~s0565741/marian-regression-tests/models/large-vocab.tgz -w models
	./scripts/download_models.py -u http://thor.inf.ed.ac.uk/~s0565741/marian-regression-tests/models/rico.tgz -w models
	./scripts/download_models.py -u http://thor.inf.ed.ac.uk/~s0565741/marian-regression-tests/models/small-vocab.tgz -w models
	./scripts/download_models.py -u http://thor.inf.ed.ac.uk/~s0565741/marian-regression-tests/models/ensemble.tgz -w models
	tar xvf models/geovedi.tgz -C models
	tar xvf models/geovedi2.tgz -C models
	tar xvf models/geovedi3.tgz -C models
	tar xvf models/issue50.tgz -C models
	tar xvf models/large-beam.tgz -C models
	tar xvf models/large-vocab.tgz -C models
	tar xvf models/rico.tgz -C models
	tar xvf models/small-vocab.tgz -C models
	tar xvf models/ensemble.tgz -C models
	rm models/*.tgz

models/model_en-de:
	$(dir_guard)
	./scripts/download_models.py -m en-de -w models/model_en-de

models/model_en-fr:
	$(dir_guard)
	./scripts/download_models.py -u http://data.statmt.org/summa/mt/models/test/en-fr/en-fr.tgz -w models
	cd models && tar xvf en-fr.tgz --transform "s|en-fr/|model_en-fr/|"
	rm models/en-fr.tgz

.PHONY: models download_models
