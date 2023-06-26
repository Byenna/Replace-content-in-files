# Replace-content-in-files
The script I provided is designed to replace the content of files in a specified directory with the content of a new file if those files contain a specific content.

Here's a breakdown of the script:

The script defines a function called replace_files_content that takes three arguments:

$1: The path to the new file that will be used to replace the content of other files.
$2: The path to the directory where the files reside that need their content replaced.
$3: The specific content that should be present in the files to trigger the replacement.

Within the function, it performs the following steps:

Checks if the new file specified by $1 exists. If it doesn't exist, it displays an error message and returns.
Checks if the directory specified by $2 exists. If it doesn't exist, it displays an error message and returns.
Iterates over all files in the directory specified by $2.

For each file that is a regular file, it checks if the file contains the specific content specified by $3 using grep.
If the file contains the specific content, it replaces the entire content of the file with the content of the new file specified by $1 using cat.
It prints a message indicating that the content has been replaced for each file.
The script then calls the replace_files_content function with the provided arguments to initiate the content replacement process.

To execute the script, you need to provide the appropriate arguments when calling it.


Replace /path/to/new/file with the path to the new file that will replace the content of other files. 

Replace /path/to/directory with the path to the directory where the files reside that need their content replaced. 

Replace "specific content" with the actual content that should be present in the files to trigger the replacement.

Please make sure to adjust the paths and the specific content to match your requirements before executing the script.
Caution: If you put the script and the files to replace in the same directory, the script also changes. Make sure you adjust: file in "$2"/*;

<p>
  <img src="/screenhot.png" width="350" title="hover text">
</p>