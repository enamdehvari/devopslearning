
Directory Summary Script:

This script is a Bash-based command-line utility that recursively analyzes a directory and reports the total number of:
- Directories
- Regular files
- Symbolic links
Hidden entries are included in the count.
Symbolic links are detected but not followed to prevent infinite recursion or cyclic traversal.



The script demonstrates:
Recursive directory traversal in Bash
Guard clause–based input validation
Safe globbing with dotglob
Proper CLI exit codes
Defensive handling of symlinks


Usage:
./dir_summary.sh <directory>

Example:
./dir_summary.sh /var

~                                                                                 
~                    
