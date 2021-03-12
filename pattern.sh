#!/bin/sh

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1

gf xss $dir/$1_archive_extracts.txt | cut -d : -f3- | sort -u > $dir/$1_xss.txt;
gf ssti $dir/$1_archive_extracts.txt | sort -u > $dir/$1_ssti.txt;
gf ssrf $dir/$1_archive_extracts.txt | sort -u > $dir/$1_ssrf.txt;
gf sqli $dir/$1_archive_extracts.txt | sort -u > $dir/$1_sqli.txt;
gf redirect  $dir/$1_archive_extracts.txt | cut -d : -f3- | sort -u > $dir/$1_redirect.txt;
gf rce  $dir/$1_archive_extracts.txt | sort -u > $dir/$1_rce.txt;
gf potential $dir/$1_archive_extracts.txt | cut -d : -f3- | sort -u > $dir/$1_potential.txt;
gf lfi  $dir/$1_archive_extracts.txt | sort -u > $dir/$1_lfi.txt;
