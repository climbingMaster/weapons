#!/bin/bash

source /home/saiteja/.bash_profile

mkdir -p /home/saiteja/Recon/$1/aquatone
dir=/home/saiteja/Recon/$1



cat $dir/$1_subdomains.txt | aquatone -ports xlarge -out $dir/aquatone/