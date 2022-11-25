
# create array
$ array=("test" "test2" 1 2)

# Indexed array
$ declare -a my_array

# Associative arrays
$ declare -A my_array

$ my_array=([foo]=bar [baz]=foobar)
$ my_array[foo2]="test"

# print key value
$ for key in "${!my_array[@]}"; do printf "key: $key value: ${my_array[$key]}\n"; done
key: foo value: bar
key: baz value: foobar
key: foo2 value: test

# Print the valuess without key
$ echo ${my_array[@]}
$ echo ${my_array[*]}

$ for i in "${my_array[@]}"; do echo "$i"; done
bar
foobar
test

# port example
for port in 20 21 80 443 3306; do
    allow_service46 tcp $port
done