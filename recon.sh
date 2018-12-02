cat td.txt | grep "\.$1.com\"" > $1.txt
python parse.py $1.txt > result.txt
sleep 1
wfuzz -z file,result.txt -Z -t 100 --filter "c=200" -H 'X-Forwarded-For: 127.0.0.1, localhost' https://FUZZ.com/$2
