
# Linux special Variables



<pre>
$#    Stores the number of command-line arguments that 
      were passed to the shell program.
$?    Stores the exit value of the last command that was 
      executed.
$0    Stores the first word of the entered command (the 
      name of the shell program).
$*    Stores all the arguments that were entered on the
      command line ($1 $2 ...).
"$@"  Stores all the arguments that were entered
      on the command line, individually quoted ("$1" "$2" ...).
</pre>


# Example 

<pre>
#!/bin/bash

echo "Process ID of shell = $$"
echo "The name of the program that is running = $0"
echo "This number of arguments being runned on this script = $#"
echo "Argument #1 = $1"
echo "Argument #2 = $2"
echo "Complete list of arguments = $*"
echo "Complete list of arguments = $@"
</pre>


