SOURCED="/home/sorab/cordova"
DIR="*"
DEST="/var/www/html/backup"
mkdir $DEST
cd $SOURCED
for d in $DIR ; do
    if [[ -d $d ]]; then
	FILE=$DEST/$d.tar.gz
        echo "$d"; tar czf $FILE $d
	sshpass -p "abc123" scp $FILE  sbr@192.168.0.70:/home/software/sorab/cordova
	rm -f $FILE
    fi
done
