#!/bin/bash
# Set this to the location on the Backend where "examples/word_language_model" from Step 1
# in "Getting Started" is located
HOMEDIR=/home/chipn/dev/awd-lstm-lm # CHANGE THIS to the path to Pytorch examples' repository
cd $HOMEDIR
mkdir -p tuning_runs
LOGDIR=`mktemp -d -p "tuning_runs"`
python main.py --epochs 40 --data /home/chipn/data/childbooks --seed 1882 --save $RANDOM "$@"