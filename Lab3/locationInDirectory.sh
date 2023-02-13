grep -rl $1 $2 | xargs -d"\n" grep -n $1
