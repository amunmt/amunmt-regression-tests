#!/usr/bin/env bash

#AMUN=/home/hieu/workspace/github/marian
#AMUN=/home/hieu/workspace/github/marian.master
AMUN=/home/hieu/workspace/github/marian.hieu.fused2

cat data/newstest2016.bpe.en | $AMUN/build/amun -c amunmt-mlstm-config.yml --mini-batch 32 --maxi-batch 320 > out 2> err



