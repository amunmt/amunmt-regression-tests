#!/bin/bash

MODELS_HIEU=geovedi geovedi2 geovedi3 issue50 large-beam large-vocab rico small-vocab ensemble en-ro-wmt16-mlstm-amun mlstm-factors

TESTS_CPU=tests/test_en_de_cpu tests/test_en_de_cpu_nbest
TESTS_GPU=tests/test_en_de_gpu tests/test_en_de_gpu.nbest tests/test_en_de_gpu.return-alignment
TESTS_PYTHON=tests/test_python_bindings

AMUN=../amun/build/amun


#####################################################################
all: models

test-cpu:
	AMUN=$(AMUN) bash -xe ./run_tests.sh $(TESTS_CPU)
test-gpu:
	AMUN=$(AMUN) bash -xe ./run_tests.sh $(TESTS_GPU)
test-python:
	AMUN=$(AMUN) bash -xe ./run_tests.sh $(TESTS_PYTHON)

test:
	AMUN=$(AMUN) bash -xe ./run_tests.sh


#####################################################################
zip-models: $(patsubst %.tgz,%,$(wildcard models/*.tgz))

models: model-ende model-enfr models-hieu

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

models-hieu: $(patsubst %,models/%,$(MODELS_HIEU))


#####################################################################
clean:
	rm -f tests/*/test.out tests/*/test.diff tests/*/err

clean-models:
	rm -rf models


.PHONY: clean clean-models models models-hieu zip-models
