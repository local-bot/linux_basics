
# Linux special Variables

$0 

echo "this file is $0"


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

# Example
./script.sh -yes -no /home/username

$# = 3
$* = -yes -no /home/username
$@ = array: {"-yes", "-no", "/home/username"}
$0 = ./script.sh, $1 = -yes etc.