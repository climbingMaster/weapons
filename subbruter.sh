#!/bin/bash

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1
wordlist=/home/saiteja/wordlist
Tools=/home/saiteja/Tools



cat $dir/subdomains/*.txt > $dir/subdomains/all.txt


shuffledns -d $1 -list $dir/subdomains/all.txt -o $dir/$1_subdomains.txt -r $wordlist/resolvers.txt -massdns $Tools/massdns/bin/massdns
