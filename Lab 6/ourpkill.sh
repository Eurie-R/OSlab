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