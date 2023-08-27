#!/usr/bin/env bash

# Predetermined value of 'n'
n=10  # Change this to your desired value

# Loop from 4 to 'n'
for ((i = 4; i <= n; i++)); do
    # Output 'n' to a file named 'n.param', overwriting the file each time
    echo "letting n be $i" > "n.param"
    echo "solving for size $i"
    bash count.sh
done
