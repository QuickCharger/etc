find . -maxdepth 1 | grep "\.h"* > 2unix.txt
find . -maxdepth 1 | grep "\.c" >> 2unix.txt
for line in $(cat 2unix.txt)
do
	dos2unix $line
done

rm 2unix.txt
