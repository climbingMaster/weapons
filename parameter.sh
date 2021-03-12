#!/bin/sh

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1

python3 /home/saiteja/Tools/ParamSpider/paramspider.py  -d $1 -l high -o $dir/$1_params.txt  --exclude woff,css,js,png,svg,php,jpg;
