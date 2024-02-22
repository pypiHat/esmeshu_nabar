#!/bin/bash

directory="/path/to/your/directory"
words=("send-bank" "بانک" "ارسال")

for file in "$directory"/*; do
    if [ -f "$file" ]; then
        echo "Searching in file: $file"
        for word in "${words[@]}"; do
            if grep -q "$word" "$file"; then
                echo "Found '$word' in '$file'"
            fi
        done
    fi
done

