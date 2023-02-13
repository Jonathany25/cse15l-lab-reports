grep -io $1 $2 > grep_result.txt
echo "Occurences:"
wc -l grep_result.txt