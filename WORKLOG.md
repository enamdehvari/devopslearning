# WORKLOG – Infrastructure & DevOps Learning Path

---

## 06 October 2025

Started building a local infrastructure portfolio on Linux.
Set up initial project structure and working environment.

---

## 07 October 2025

Installed Git, configured local environment, and pushed initial repository to remote.
Established version control workflow.

---

## 12 November 2025

Built `system_info.sh` while studying TLCL Chapter 24.

* Practiced Bash functions and here-documents
* Generated HTML system report using `uptime`, `df`, and `du`
* Strengthened command substitution and modular script design

---

## 15 November 2025

Developed interactive Bash menu using `while` loop and nested conditionals.

* Implemented here-document UI rendering
* Added regex input validation
* Integrated privilege detection using `id -u`

---

## 18 November 2025

Rebuilt menu system using `case` and `until` loop.

* Applied guard clauses and improved control flow
* Introduced delayed feedback with `sleep`
* Technical breakthrough: combined `case` dispatch with runtime privilege detection

---

## 21 November 2025

Explored `case` branching (TLCL Ch.31) and POSIX pattern matching.

* Understood `read` + `$REPLY` interaction
* Technical breakthrough: learned `;;&` for multi-branch execution

---

## 24 November 2025

Studied wildcard handling in loops.

* Prevented globbing pitfalls using `[[ -e ]]` guards
* Improved reliability of pathname expansion

---

## 17 February 2026

Completed `dir_summary.sh` (recursive directory analyzer).

* Implemented recursion and safe traversal
* Applied file tests (`-d`, `-f`, `-L`)
* Ensured symlink-safe logic
* Reinforced CLI validation and script structure
* Committed with clean Git workflow

---

## 19 March 2026

Built `path_utilities.sh` – multi-mode CLI tool (Phase 2 milestone).

* Implemented modes: `help`, `list`, `type`, `count` using `case` dispatch
* Practiced positional parameters: `$1`, `$@`, `$#`
* Learned function argument scope and necessity of passing `"$@"`
* Implemented safe argument validation and guard clauses
* Built loop-based classification using file tests (`-f`, `-d`, `-L`, `-e`)
* Implemented counting logic with arithmetic expansion `(( ))`
* Debugged glob expansion, quoting behavior, and loop edge cases
* Designed clean CLI output and exit behavior


---
