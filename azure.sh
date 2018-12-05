cat azure.txt | grep "\.$1\"" > $1.txt
python az-parse.py $1.txt > result.txt
echo "parse done"
cat result.txt | while read line
do
	dig -t A $line > temp.txt
	if grep -q "NXDOMAIN" temp.txt; then
		cat temp.txt
	fi
done

