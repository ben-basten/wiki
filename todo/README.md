# todo

Version control tracking for the generate [todo.txt tool](http://todotxt.org/) files.

To point todo.txt to this directory, add the following to the ~/.todo.cfg file:

```
# Your todo.txt directory (this should be an absolute path)
export TODO_DIR="/path/to/wiki/todo"

# Your todo/done/report.txt locations
export TODO_FILE="$TODO_DIR/todo.txt"
export DONE_FILE="$TODO_DIR/done.txt"
export REPORT_FILE="$TODO_DIR/report.txt"
```
