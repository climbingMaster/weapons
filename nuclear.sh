#!/bin/bash

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1

cat $dir/$1_probed.txt | nuclei -c 500 -silent -t /home/saiteja/Tools/nuclei-templates/ -o $dir/$1_nuclei.txt

