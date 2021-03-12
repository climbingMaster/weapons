#!/bin/sh

source /home/saiteja/.bash_profile

dir=/home/saiteja/Recon/$1
livejsfile=$1_live_jsfile_links.txt
cat $dir/$_archive_extracts.txt | grep -iE "\.js$" | uniq | sort >> $dir/$1_jsfile_links.txt;
echo $1 | subjs >> $dir/$1_jsfile_links.txt;
echo $1 | hakrawler -js -depth 2 -scope subs -plain >> $dir/$1_jsfile_links.txt;

cat $dir/$1_jsfile_links.txt | httpx -follow-redirects -silent -status-code | grep "[200]" | cut -d ' ' -f1 | sort -u > $dir/$1_live_jsfile_links.txt;

jsendpoint(){
echo $livejsfile
for i in $(cat $dir/$livejsfile);do
python3 /home/saiteja/Tools/LinkFinder/linkfinder.py -i $i -o cli >> $dir/_JSEndpoints.txt;
done
}
jsendpoint


cat $dir/$1_live_jsfile_links.txt | python3 /home/saiteja/Tools/getjswords.py | sort -u > $dir/$1_JSWords.txt;

cat $dir/$1_live_jsfile_links.txt  | while read url ; do bash /home/saiteja/Tools/jsvar.sh $url | sort -u | tee $dir/$1_JSXSS.txt ; done;
