
# Path Utilities CLI

A multi-mode command-line tool built in Bash to inspect and classify filesystem paths.
This project was developed as part of my Phase 2 (Shell Scripting & Git) training, focusing on argument parsing, control flow, and safe CLI design.

---

## Features

* Multi-mode CLI using `case`
* Supports multiple positional arguments (`$@`)
* Safe file type detection using Bash file tests
* Clean error handling and exit codes
* No destructive operations (read-only)

---

## Usage

```bash
./path_utilities.sh MODE [PATH...]
```

---

## Modes

### help

Displays usage instructions.

```bash
./path_utilities.sh help
```

---

### list PATH

Lists entries inside a directory.

```bash
./path_utilities.sh list /etc
```

* Validates that PATH is a directory
* Prints one entry per line
* Handles empty directories safely

---

### type PATH...

Reports the type of each provided path.

```bash
./path_utilities.sh type file.txt /etc link missing.txt
```

Output format:

```
file.txt -> file
/etc -> directory
link -> symlink
missing.txt -> missing
```

---

### count PATH...

Counts how many paths fall into each category.

```bash
./path_utilities.sh count file.txt /etc link missing.txt
```

---

## Concepts Practiced

* Positional parameters: `$1`, `$2`, `$@`, `$#`
* Argument validation and guard clauses
* `case` for command dispatch
* Looping over arguments (`for`)
* File tests: `-f`, `-d`, `-L`, `-e`
* Arithmetic operations: `(( ))`
* Safe quoting (`"$var"`)
* Exit codes and error handling
* Function design and argument scope

---

## Design Notes

* Each mode is implemented as a separate function
* Arguments are explicitly passed to functions using `"$@"`

---

## Limitations

* `list` does not include hidden files (`.*`)
* `count` operates only on provided arguments (non-recursive)
* No recursive directory traversal.


