
# This script was developed while studying Chapter 33 (Flow Control: Looping with for) from The Linux Command Line by William Shotts.



# Safe_Wildcard.sh script safely iterates over files matching the pattern distros*.text while guarding against empty glob expansion.
# If no files match the pattern, the script prevents unintended literal processing by checking file existence with [[ -e ]].


# The script demonstrates:
#   for loop iteration over glob patterns
#   Wildcard (pathname expansion) behavior in Bash
#   Defensive file existence testing using [[ -e ]]
#   Protection against empty glob matches
#   Basic control flow and conditional guarding


# Usage:
# ./Safe_Wildcard.sh

# Example:
# If matching files exist:
# distros1.text
# distros2.text
# If no files match:
#    "not here dude."
