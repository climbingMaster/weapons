#!/bin/sh

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1

res=$dir/directoryEnum
mkdir -p $res;

python3 /home/saiteja/Tools/dirsearch/dirsearch.py -l $dir/$1_probed.txt -t 300 -i 200,201,202,203,204,301,302,303,304 -b;
mv /home/saiteja/Tools/dirsearch/reports/ $res;


