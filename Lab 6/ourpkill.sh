#!/bin/bash
# ourpkill.sh

# MARCELINO, Jaren
# PREDIGUA, Dave
# RAMOY, Lorenzo Uriel

# Check if no arguments are provided
if [ "$1" = "" ]
then
    echo "Error: Missing arguments. Please provide a pattern."
    exit 1
fi

# Argument parsing
if [ "$2" = "" ]
then
    # If only one argument is provided, it is treated as the pattern to match
    # The default termination signal is -15 (SIGTERM)
    signal="-15"
    pattern="$1"
elif [ "$3" = "" ]
then
    # If two arguments are provided, the first argument is treated as the signal to send, and the second argument is the pattern to match
    signal="$1"
    pattern="$2"
else
    # If more than two arguments are provided, display an error message
    echo "Error: Too many arguments."
    exit 1
fi

# Use a temporary file to store the PIDs
temp_pids = "temp_pids_$$.txt"

# Use ourpgrep.sh to find the PIDs matching the pattern and store them in the temporary file
./ourpgrep.sh "$pattern" > $temp_pids

# Read the PIDS from the temporary file
for pid in $(cat $temp_pids)
do
    # Call the kill command with the specified signal and PID
    # 2>/dev/null suppresses any error messages that may occur if the process has already been terminated
    kill $signal $pid 2>/dev/null

    # If the kill command was unsuccessful, display an error message
    if [ $? -ne 0 ]
    then
        echo "Error: Failed to send signal $signal to process with PID $pid."
    fi
done

# Clean up the temporary file
rm $temp_pids