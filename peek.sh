if [[ -z $2 ]]; then
	arg2=3   # default value
else
	arg2=$2  # use user-provided value
fi

lines=$(wc -l < $1)

if [[ $lines -le $((2*$arg2)) ]]; then
	cat $1
else
	echo Warning: the number of lines of file $1 exceeds 2 times $arg2
	echo Here are the first 3 and last 3 lines of file $1
	head -n $arg2 $1
	echo ...
	tail -n $arg2 $1
fi
