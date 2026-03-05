#!/bin/bash
# ourpgrep.sh

# The script checks if exactly one argument is provided.
# Note the spaces around the [ program.
if [ "$1" = "" ]
then
    # Error handling if no argument is passed
    echo "Error: Please provide a process name pattern."
else
    # Error handling if more than one argument is passed
    if [ "$2" != "" ]
    then
        echo "Error: Only one argument is allowed."
    else
        # Save ps aux output to a temporary file. 
        # Doing this first prevents our later grep commands from showing up in the process list.
        ps aux > temp_all_ps.txt

        # Filter the file for the current user's processes using the $USER environment variable
        grep "$USER" < temp_all_ps.txt > temp_user_ps.txt

        # Filter the resulting file for the requested name pattern
        grep "$1" < temp_user_ps.txt > temp_match_ps.txt

        # Extract the PID (2nd column). We pipe it through tr to squeeze repeating spaces, 
        # then pipe it to cut to grab the second field.
        tr -s ' ' < temp_match_ps.txt | cut -d ' ' -f 2

        # Clean up temporary files properly when done
        rm temp_all_ps.txt
        rm temp_user_ps.txt
        rm temp_match_ps.txt
    fi
fi