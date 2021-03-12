#!/bin/sh

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1

cat $dir/$1_probed.txt | githound --dig-files --dig-commits.txt > $dir/$1_gitrecon.txt

