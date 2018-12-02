import json
import sys
result = set()
f_name = "shop.txt"
if len(sys.argv) > 1:
	f_name= sys.argv[1]
with open(f_name) as lines:
	for line in lines:
		a = json.loads(line)
		result.add(a.get("name"))
		result.add(a.get("cname"))
result.add(None)
result.remove(None)
for x in result:
	print x
	
