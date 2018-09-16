#!/bin/bash

all: models

zip-models: $(patsubst %.tgz,%,$(wildcard models/*.tgz))

models: model-ende model-enfr models-hieu

MODELS_HIEU: geovedi geovedi2 geovedi3 issue50 large-beam large-vocab rico small-vocab ensemble en-ro-wmt16-mlstm-amun mlstm-factors.tgz
models-hieu: $(patsubst %,models/%,$(MODELS_HIEU))

%: %.tgz
	tar xvf $^ -C models
models/%.tgz:
	mkdir -p models
	./scripts/download_models.py -u http://statmt.org/hieu/amun-regression-tests/$@ -w models

model-ende: models/model_en-de
models/model_en-de:
	mkdir -p models
	./scripts/download_models.py -m en-de -w models/model_en-de
model-enfr: models/model_en-fr
models/model_en-fr:
	mkdir -p models
	./scripts/download_models.py -u http://data.statmt.org/summa/mt/models/test/en-fr/en-fr.tgz -w models && cd models && tar xvf en-fr.tgz --transform "s|en-fr/|model_en-fr/|"

clean:
	rm -rf models

.PHONY: clean models zip-models
