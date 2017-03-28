#!/bin/bash
#http://www.cs.up.ac.za/forum/index.php?t=finduser&&&start=1640
rm test
echo "[" > res
for i in {0..1640..40}
do
	 curl -s http://www.cs.up.ac.za/forum/index.php\?t\=finduser\&\&\&start\=$i | egrep -o 'u[0-9]{8}' >> test
done

input="test"
while IFS= read -r var
do
  echo "\"$var\"" | tr '\n' ',' >>res 
done < "$input"
echo "]" >> res
