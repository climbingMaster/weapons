#!/bin/sh

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1


echo https://$1 | python3 /home/saiteja/Tools/FavFreak/favfreak.py > $dir/$1_faver.txt;

cat $dir/$1_faver.txt | grep 'h]' | cut -d ] -f2 | cut -d " " -f2 | tee $dir/$1_faviconhash.txt;


