


# system_info.sh — HTML System Information Generator
# Bash script written while studying Chapter 24 of The Linux Command Line (William Shotts).

# This script generates a simple HTML page containing:
#   System uptime
#    Disk space usage (df -h)
#    Home directory space usage
#   Timestamp and hostname information

# The script demonstrates:
# Bash functions
# Command substitution $( )
# Here-documents (cat << EOF)
# Variable usage
# Basic script structuring (main section + functions)


# Usage:
#    ./system_info.sh > system_report.html
#    Then open:
#    xdg-open system_report.html


# Purpose:
# Practice modular Bash scripting using functions and structured output formatting.
