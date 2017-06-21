#!/usr/bin/env bash

#AMUN=/home/hieu/workspace/github/amunmt
#AMUN=/home/hieu/workspace/github/amunmt.private.3d6
#AMUN=/home/hieu/workspace/github/marian

#cat data/valid.en | $AMUN/build/amun -c clf.amun.npz.amun.yml --mini-batch 1 --maxi-batch 1 --gpu-threads 0 --cpu-threads 12
#cat data/valid.en | $AMUN/build/amun -c clf.amun.npz.amun.yml --mini-batch 1 --maxi-batch 1 --gpu-threads 1 --cpu-threads 0
cat data/valid.en | $AMUN/build/amun -c clf.amun.npz.amun.yml --mini-batch 35 --maxi-batch 100 --gpu-threads 1

#$AMUN/build/s2s -m clf.amun.npz --vocabs vocab.en.yml vocab.labels.yml --type amun -i data/valid.en
