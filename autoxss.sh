#!/bin/sh

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1

dalfox -b hahwul.xss.ht file $dir/$1_params.txt > $dir/$1_xss.txt;
