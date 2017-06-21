#!/usr/bin/env bash

#subword_nmt=/home/hieu/workspace/github/subword-nmt
#marian=/home/hieu/workspace/github/marian
#AMUN=/home/hieu/workspace/github/amunmt
#AMUN=~/workspace/github/amunmt.private.3d6
#MOSES=/home/hieu/workspace/github/mosesdecoder
#WORK=/home/hieu/workspace/experiment/europarl/de-en

#$subword_nmt/learn_bpe.py -s 85000 < ../training/corpus.1.de > vocab.de
#$subword_nmt/learn_bpe.py -s 85000 < ../training/corpus.1.en > vocab.en

#$subword_nmt/apply_bpe.py -c vocab.de < ../training/corpus.1.de > corpus.1.de.bpe
#$subword_nmt/apply_bpe.py -c vocab.en < ../training/corpus.1.en > corpus.1.en.bpe

#$subword_nmt/apply_bpe.py -c vocab.de < ../tuning/input.tc.1  > input.tc.1.bpe
#$subword_nmt/apply_bpe.py -c vocab.en < ../tuning/reference.tc.1  > reference.tc.1.bpe

#$amunmt/build/marian -t corpus.1.de.bpe corpus.1.en.bpe --valid-sets input.tc.1.bpe reference.tc.1.bpe --dim-vocabs 85000 --early-stopping 10

INPUT=input.tc.1.bpe
#INPUT=corpus.1.de.bpe
#INPUT=in.100k
#INPUT=in.20k
#INPUT=in.10

BATCH=20
MAXIBATCH=100

time -p $AMUN/build/amun --config config.yml  --gpu-threads 1 --cpu-threads 0 --mini-batch $BATCH --maxi-batch $MAXIBATCH -b 40 < $INPUT

#for beam in {1..15}
#do
#  time -p $AMUN/build/amun --config config.yml  --gpu-threads 1 --cpu-threads 0 --mini-batch $BATCH --maxi-batch $MAXIBATCH -b $beam < $INPUT 2> err > out.$beam
#done

#time -p $marian/build/s2s  --max-length 100 --dim-vocabs 85000 85000  --vocabs corpus.1.de.bpe.yml corpus.1.en.bpe.yml  -m model.npz --type amun  --mini-batch $BATCH --maxi-batch 1  -i $INPUT -b 5 -w 1000
#time -p $marian/build/s2s --max-length 1000 --vocabs corpus.1.de.bpe.yml corpus.1.en.bpe.yml  -m model.npz --type s2s  --mini-batch $BATCH --maxi-batch 1 -i $INPUT

#cat temp.gpu | sed -r 's/(@@ )|(@@ ?$)//g' > temp.gpu.de-bpe

#$MOSES/scripts/generic/multi-bleu.perl $WORK/evaluation/dev2006.reference.tok.1 < temp.gpu.de-bpe > temp.gpu.bleu

#$MOSES/scripts/generic/multi-bleu.perl -lc $WORK/evaluation/dev2006.reference.tok.1 < temp.gpu.de-bpe >> temp.gpu.bleu

#cat temp.gpu.bleu
