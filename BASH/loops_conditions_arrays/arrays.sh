
# create array

array=("test" "test2" 1 2)

# Indexed array
$ declare -a my_array

# Associative arrays

$ declare -A my_array

$ my_array=([foo]=bar [baz]=foobar)

$ my_array[foo]="test"

$ for key in "${!my_array[@]}"; do echo "$key"; done
baz
foo
test

# Print the values of an array

$ echo ${my_array[@]}

$ echo ${my_array[*]}

$ for i in "${my_array[@]}"; do echo "$i"; done
foo
bar