#!/bin/bash

replace_files_content() {
    # This function replaces the content of files in a directory containing a specific content with the content of a new file

    # Check if the new file exists
    if [ ! -f "$1" ]; then
        echo "Error: New file $1 does not exist"
        return 1
    fi

    # Check if the directory exists
    if [ ! -d "$2" ]; then
        echo "Error: Directory $2 does not exist"
        return 1
    fi

    # Iterate over all files in the directory
    for file in "$2"/*; do
        # Check if the file is a regular file
        if [ -f "$file" ]; then
            # Check if the file contains the specific content
            if grep -q "$3" "$file"; then
                # Replace the content of the file with the content of the new file
                cat "$1" > "$file"
                echo "Content of $1 has been replaced into $file"
            fi
        fi
    done
}

# Call the function with the provided parameters
replace_files_content "/path/to/new/file" "/path/to/directory" "specific content"
