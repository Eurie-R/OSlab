#!/bin/bash
# ourpgrep.sh

# MARCELINO, Jaren
# PREDIGUA, Dave
# RAMOY, Lorenzo Uriel

# Check if exactly one argument is provided
if [ "$1" = "" ]
then
    echo "Error: Please provide a pattern to match."
    exit 1
fi

# Generate a temporary file to hold ps output
temp_file="temp_ps_$$.txt" 
ps aux > $temp_file

# Process the text and find matching PIDs, using | or pipe operator to chain the commands together
# 1. cat: Reads the temporary file and outputs the text
# 2. grep "^$USER": Filters for lines starting with the specific username
# 3. grep "$1": Filters that result further to match the search pattern
# 4. grep -v "grep": Ignores the process of the grep command itself
# 5. grep -v "ourpgrep.sh": Ignores the script's own process from the final list
# 6. tr -s ' ': Joins multiple consecutive spaces into a single space so the columns are evenly separated
# 7. cut -d ' ' -f 2: Uses the single space as a delimiter (-d ' ') to cut out the 2nd field (-f 2), which is the PID column
cat $temp_file | grep "^$USER" | grep "$1" | grep -v "grep" | grep -v "ourpgrep.sh" | tr -s ' ' | cut -d ' ' -f 2

# lean up the temporary file
rm $temp_file