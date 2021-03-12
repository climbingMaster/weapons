#!/bin/sh

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1

cat $dir/$1_probed.txt | xargs -I %% bash -c 'python3 /home/saiteja/Tools/SecretFinder/SecretFinder.py -i %% -e -o cli' > $dir/$1_secretfinder.txt; 
cat $dir/$1_secretfinder.txt | grep 'google_api' -B 1 | sort -u > $dir/$1_gmapapi.txt;

