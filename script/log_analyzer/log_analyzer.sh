#!/bin/bash 
# log_analyzer.sh is a cl script that counts the total lines, total error lines and total warning line in a given readable log file


usage() {
	echo "Usage: log_analyzer.sh LOGFILE"
}


if [[ $# -ne 1 ]]; then
	echo "Error: Invaild number of arguments"
	usage
	exit 1
fi

LOGFILE="$1"

if [[ ! -e "$LOGFILE" ]]; then
	echo "Error: File does not exist"
	usage 
	exit 1
fi

if [[ ! -f "$LOGFILE" ]]; then
	echo "Error: Input is not a file"
	usage
	exit 1
fi

if [[ ! -r "$LOGFILE" ]]; then
	echo "Error: The file is not readable"
	usage
	exit 1
fi

count_lines=$(wc -l < "$LOGFILE")
count_errors=$(grep -w -i "error" "$LOGFILE" | wc -l)
count_warnings=$(grep -w -i "warning" "$LOGFILE"  | wc -l)

echo "total_lines=$count_lines"
echo "error_lines=$count_errors"
echo "warning_lines=$count_warnings"

if [[ $count_errors -gt 0 ]]; then
	exit 2
else
	exit 0
fi





