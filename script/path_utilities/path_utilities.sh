

# functions

help_mode() {
echo "Usage:"
echo "path_utilities.sh MODE [PATH...]"
echo "Modes:"
echo "help         show usage instructions."
echo "list PATH    list entries if PATH is directory."
echo "type PATH...    report type of each given path."
echo "count PATH...  report totals of files, directories, symlinks and missing."
}

unknown_mode() {
echo "invalid mode: $mode"
help_mode
exit 1

}


list_mode() {

if [[ $# -ne 2 ]]; then
	echo "choose only one path." >&2
	exit 1
fi

dir=$2

if [[ ! -d "$dir" ]]; then
	echo "Error: PATH does not exist or not a directory." >&2
	exit 1
	fi
	
	for entry in "$dir"/*
	do
		if [[ ! -e "$entry" ]]; then
			echo "the directory is empty." >&2
			exit 1
		else
		echo "$entry"
		fi
	done

 }
 
 
 type_mode() {
if [[ $# -lt 2 ]]; then
	echo "choose at least one path"
	exit 1
fi
for item in "${@:2}" 
	do
	if [[ -L "$item" ]]; then
		echo "$item -> symlink"
	elif [[ -d "$item" ]]; then 
		echo "$item -> directory"
	elif [[ -f "$item" ]]; then
		echo "$item -> file"
	else
		echo "$item -> missing."
	fi
done
}

count_mode() {
if [[ $# -lt 2 ]]; then
	echo "choose at least one path" >&2
	exit 1 
fi

files=0
directories=0
symlink=0
missing=0

for item in "${@:2}"
do
	if [[ -L "$item" ]]; then
		((symlink++))
	elif [[ -d "$item" ]]; then 
		((directories++))
	elif [[ -f "$item" ]]; then
		((files++))
	else
		 ((missing++))
	fi
done

echo "files: $files"
echo "symlink: $symlink"
echo "directories: $directories"
echo "missing: $missing"
}



# read mode

mode=$1    # we save the positional paramtere into a variable callded mode

if [[ -z "$mode" ]]; then
	help_mode
	exit 1
fi


# dispatcher 

case "$mode" in
	help) help_mode
	;;
	list) list_mode "$@"
	;;
	type) type_mode "$@"
	;;
	count) count_mode "$@"
	;;
	*) usage_mode
	;;
	
esac
