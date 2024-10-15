#!/bin/bash

animate_figlet() {
    local text="$1"
    local figlet_output
    figlet_output=$(echo "$text" | figlet)
    IFS=$'\n' read -rd '' -a lines <<< "$figlet_output"
    for line in "${lines[@]}"; do
        for (( i=0; i<${#line}; i++ )); do
            echo -ne "${line:$i:1}"
            sleep 0.01
        done
        echo
    done
}

animate_figlet "By dionabazi"

echo "Enter the data for the QR code (URL, text, etc.):"
read data

python3 qr_code_generator.py "$data"
