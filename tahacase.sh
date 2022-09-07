#!/bin/bash

find /etc/kubernetes/pki/ -type f -name "*.crt" >> filename.txt
find /etc/kubernetes/pki/ -type f -name "*.crt" -print|xargs -L 1 -t  -i bash -c 'openssl x509  -noout -text -in {}|grep Before' >> before.txt
find /etc/kubernetes/pki/ -type f -name "*.crt" -print|xargs -L 1 -t  -i bash -c 'openssl x509  -noout -text -in {}|grep After' >> after.txt
sed -i 's|/etc/kubernetes/pki/||g' filename.txt

filenamearr=()
beforearr=()
afterarr=()

while IFS= read -r line; do
   filenamearr+=("$line")
done <filename.txt

while IFS= read -r line; do
   beforearr+=("$line")
done <before.txt

while IFS= read -r line; do
   afterarr+=("$line")
done <after.txt

i=0

for str in ${filenamearr[@]};
do
echo ${filenamearr[i]} >> hbcase.txt
echo ${beforearr[i]} >> hbcase.txt
echo ${afterarr[i]} >> hbcase.txt
echo $i
i=$(($i+1))
done
