grep 'monu' linux.txt

sed 's/89/10101/' linux.txt

awk -F ',' 'NR > 1 { sum += $2 } END { print "Average Score:", sum / (NR - 1) }' linux.txt
 
