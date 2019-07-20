#!/bin/bash

for z in {0..100}
do
    taskset -c 7 python translate.py -model ~/models/en-de_step_100000.pt -src index_input.txt -output pred.txt --beam_size 1 --max_length 100 --verbose --batch_size 1
    sleep 1
done
