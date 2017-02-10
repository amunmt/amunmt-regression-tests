#!/bin/bash

dir_guard=@mkdir -p $(@D)
second=$(word 2, $^)
third=$(word 3, $^)
fourth=$(word 4, $^)

all: models

models: $(patsubst %.tgz,%,$(wildcard models/*.tgz))

download_models: models/model_en-de models/model_en-fr


%: %.tgz
	tar xvf $< -C models

models/model_en-de:
	$(dir_guard)
	./scripts/download_models.py -m en-de -w models/model_en-de

models/model_en-fr:
	$(dir_guard)
	./scripts/download_models.py -u http://data.statmt.org/summa/mt/models/test/en-fr/en-fr.tgz -w models
	cd models && tar xvf en-fr.tgz --transform "s|en-fr/|model_en-fr/|"
	rm models/en-fr.tgz

.PHONY: models download_models
