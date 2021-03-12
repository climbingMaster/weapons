#!/bin/sh

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1

python /home/saiteja/Tools/CORScanner/cors_scan.py -i  $dir/$1_probed.txt -t 200 > $dir/$1_cors.txt;

