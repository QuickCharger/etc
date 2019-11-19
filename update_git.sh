dirlist=$(find . -mindepth 1 -maxdepth 1 -type d)

for file in ${dirlist}
do
	pushd ${file} > /dev/null
	echo -e "update \033[33m${file}\033[0m"
	git pull
	popd > /dev/null
done
