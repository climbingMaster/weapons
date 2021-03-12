#!/bin/sh

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1

naabu $1 > $dir/$1_portscan.txt;

