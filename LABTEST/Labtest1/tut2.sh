#!/bin/bash

# Specify the directory where your files are located
directory="/home/ryad/Downloads/bablaAll/Lab-02/"

# Change to the target directory
cd "$directory" || exit

# Declare an associative array to hold file type counts
declare -A file_types

# Loop through all files in the directory
for file in *; do
    # Check if it is a file
    if [ -f "$file" ]; then
        # Extract the file extension
        extension="${file##*.}"

        # Check if the file has an extension
        if [ "$file" == "$extension" ]; then
            extension="no_extension"  # No extension case
        fi

        # Increment the count for this file type
        ((file_types[$extension]++))
    fi
done

# Output the results
echo "Counting different file types in $directory:"
for ext in "${!file_types[@]}"; do
    count=${file_types[$ext]}
    echo "$count $ext file(s)"
done
