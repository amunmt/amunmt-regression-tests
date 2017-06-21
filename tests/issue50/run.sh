export AMUNMT_ROOT=/home/hieu/workspace/github/marian.master
#export AMUNMT_ROOT=/home/hieu/workspace/github/marian.private.3d6
#export MARIAN_ROOT=/home/hieu/workspace/github/marian
#export AMUN_PYLIB_DIR=$AMUNMT_ROOT/build/src

echo "one day , Los Angeles Times colum@@ n@@ ist Steve Lopez was walking along the streets of downtown Los Angeles when he heard beautiful music . <ted>" > input.txt                                                                                                                

#IN=in.10k
IN=in.1k
#IN=input.txt                                                                                                                               
BATCH=128

#${AMUNMT_ROOT}/scripts/amun.py -m model.npz -s vocab.en.json -t vocab.de.json --mini-batch 100 --maxi-batch 2000 < $IN                     
${AMUNMT_ROOT}/build/amun -m model.npz -s vocab.en.json -t vocab.de.json --mini-batch $BATCH --maxi-batch $BATCH -i $IN --gpu-threads 1 -b 5 > out
#${MARIAN_ROOT}/build/s2s -m model.npz -v vocab.en.json vocab.de.json --mini-batch $BATCH --maxi-batch $BATCH -i $IN  -b 5


