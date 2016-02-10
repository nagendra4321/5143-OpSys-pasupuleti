i=$1
base=$(echo $i | cut -d'.' -f1)
ext=$(echo $i | cut -d'.' -f2)
if [ -e $1 ]
then
	d=$base"_$(date +'%Y-%m-%d')"."$ext"
	cp "$1" "$d"
  	echo "file exist new dated copt of  file created"
else
	d=$base"_$(date +'%Y-%m-%d')"."$ext"
	echo "file not exist new file created"
	touch "$d"
fi
