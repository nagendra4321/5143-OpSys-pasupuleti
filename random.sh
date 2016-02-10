words=$(cat  /usr/share/dict/words )
i=$(echo "$RANDOM" )
j=1
for var in $words
do
	if [ $i = $j ]
	then
		echo $var
		break
	else
		((j++))
	fi
done
		
