#!/bin/bash

dir_guard=@mkdir -p $(@D)
second=$(word 2, $^)
third=$(word 3, $^)
fourth=$(word 4, $^)

all: models

models: $(patsubst %.tgz,%,$(wildcard models/*.tgz))

download_models: models/model_en-de


%: %.tgz
	tar xvf $< -C models

models/model_en-de:
	$(dir_guard)
	./scripts/download_models.py -m en-de -w models/model_en-de

.PHONY: models download_models
