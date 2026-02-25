this the second scrip i did after i finished Phase 02 of my learnings.


# log_analyzer.sh

A small Bash CLI tool that scans a log file and reports:
- total number of lines
- number of lines containing `error` (case-insensitive, whole-word)
- number of lines containing `warning` (case-insensitive, whole-word)

It is CI-friendly: it returns a non-zero exit code when errors are present.

## Usage

```bash
./log_analyzer.sh LOGFILE
