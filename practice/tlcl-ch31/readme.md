
# These scripts were developed while studying Chapter 31 (Flow Control: Branching with case) from The Linux Command Line  by William Shotts.



# ----- character Classification Script (character_check.sh) -----
# This script reads a single character and classifies it using POSIX character classes inside a case statement.
# Multiple pattern matches are enabled using ;;&, allowing a single input to satisfy more than one condition.

# Demonstrates:
#   POSIX character classes ([[:upper:]], [[:digit:]], etc.)
#   case branching with fallthrough (;;&)
#   Interactive input using read and $REPLY
#   Multi-condition evaluation in Bash

# Usage:
# ./character_check.sh




# ---- interactive Menu – Case Version (menu_case.sh) -----

# This script implements a structured menu-driven CLI using an until loop combined with case dispatching.
# User input is validated via regex before execution. The program exits cleanly when option 0 is selected.

# Demonstrates:
#   Loop lifecycle control using until
#   Command dispatch with case
#   Guard-clause input validation
#   Runtime privilege detection using id -u
#   System inspection commands (uptime, df -h, du -sh)
#   Controlled feedback delay using sleep

# Usage:
# ./menu_case.sh





# ------  Interactive Menu – While Version (menu_while.sh) -----

# This script implements the same system menu functionality using a while loop and nested if statements.
# The menu interface is rendered using a here-document, and input is validated before execution.

# Demonstrates:
#   Loop-controlled CLI design with while
#   Nested conditional branching using [[ tests ]]
#   Regex input validation
#   Here-document UI rendering
#   Privilege-aware logic

# Usage:
# ./menu_while.sh
