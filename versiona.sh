if [ -e $1 ]
then
	d=$(date +'%Y-%m-%d'_"$1")
	cp "$1" "$d"
  	echo "file exist new dated copy of file created"
else
	d=$(date +'%Y-%m-%d')_"$1"
	export d
	touch "$d"
	echo "file not exist new file created"
fi
