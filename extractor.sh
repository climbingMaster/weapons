#!/bin/sh

github_endpoint(){
python3 /home/saiteja/Tools/github-search/github-endpoints.py  -t 746038c03470e9dc256b26e6cb99c4e9082927fe -d $1
}
source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1

waybackurls $1 > $dir/$1_extraction.txt;
gau $1 >> $dir/$1_extraction.txt
github_endpoint $1 >> $dir/$1_extraction.txt; cat $dir/$1_extraction.txt | sort -u > $dir/$1_archive_extracts.txt;
