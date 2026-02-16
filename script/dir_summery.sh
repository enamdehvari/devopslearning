#!/bin/bash

# dir_summary.sh — Bash script to count directories, files, and symlinks
# (including hidden entries) within a given directory.
# Usage:   ./dir_summary.sh <directory>
# Example: ./dir_summary.sh /var
# Note:    Does not follow symlinks (prevents infinite recursion).

file_count=0
dir_count=0
symlink_count=0

if [[ $# -ne 1 ]]; then
    echo "Usage: ./dir_summary.sh <directory>"
    exit 1
fi

if [[ ! -d "$1" ]]; then
    echo "Error: '$1' is not a valid directory."
    exit 1
fi

# Include hidden files in globbing
shopt -s dotglob

# -------- Recursive Traversal Function --------
traverse() {
    ((dir_count++))

    for entry in "$1"/*; do
        [[ ! -e "$entry" ]] && continue

        if [[ -L "$entry" ]]; then
            ((symlink_count++))

        elif [[ -f "$entry" ]]; then
            ((file_count++))

        elif [[ -d "$entry" ]]; then
            traverse "$entry"
        fi
    done
}

# -------- Execute Traversal --------
traverse "$1"

# -------- Summary Output --------
echo "Directories: $dir_count"
echo "Files: $file_count"
echo "Symlinks: $symlink_count"

exit 0
