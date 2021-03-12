#!/bin/sh

source /home/saiteja/.bash_profile
certspotter(){
curl -s https://certspotter.com/api/v0/certs\?domain\=$1 | jq '.[].dns_names[]' | sed 's/\"//g' | sed 's/\*\.//g' | sort -u | grep $1
} #h/t Michiel Prins

crtsh(){
curl -s https://crt.sh/?Identity=%.$1 | grep ">*.$1" | sed 's/<[/]*[TB][DR]>/\n/g' | grep -vE "<|^[\*]*[\.]*$1" | sort -u | awk 'NF'
}

github_domain(){
python3 /home/saiteja/Tools/github-search/github-subdomains.py  -t 746038c03470e9dc256b26e6cb99c4e9082927fe -d $1
}

mkdir -p /home/saiteja/Recon/$1/subdomains
dir=/home/saiteja/Recon/$1/subdomains


subfinder -d $1 -o $dir/subfinder$1.txt

cd /home/saiteja/Tools/subDomainsBrute
python3 subDomainsBrute.py $1 -w -o $dir/subDomainsBrute_temp_$1

cd /home/saiteja/weapons

cat $dir/subDomainsBrute_temp_$1 | cut -d " " -f1 >> $dir/subDomainsBrute$1.txt

python3 /home/saiteja/Tools/ctfr/ctfr.py -d $1 -o $dir/ctfr_$1.txt


assetfinder -subs-only $1 | tee $dir/assetfinder$1.txt

chaos -d $1 -silent  -o $dir/chaos$1.txt

amass enum  -passive -d $1 -o $dir/amass$1.txt


crtsh $1 >> tee $dir/crtsh$1.txt

certspotter $1 >> tee $dir/certspotter$1.txt

github_domain $1 >> $dir/github$1.txt


