if [ -z $1  || -z $2 ]; then
	echo "Usage $0 port:num logfile:str";
	exit 1;
fi

if [ -z $(echo $1 | grep -E "^[0-9]+$") ]; then
	echo "Wrong port format: $1 must be integer";
	exit 1;
fi

while True; do
	nc -v -l -p $1 >> $2;
        echo "-------------------------";
done
