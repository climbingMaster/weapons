#!/bin/sh

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1

SubOver -l $dir/$1_subdomains.txt -o $dir/$1_takeover.txt;
