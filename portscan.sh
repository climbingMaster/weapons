#!/bin/sh

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1

naabu -iL $dir/$1_subdomains.txt >> $dir/$1_portscan.txt
