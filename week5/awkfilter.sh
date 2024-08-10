#!/bin/bash
echo -e "Using REgex filter to only show users who have “/bin/bash” listed as their default shell. \n\n"
# Display the header for the table
echo -e "Username\t\tUserID\tGroupID\tHome Directory\t\t\tShell"
echo -e "--------\t\t------\t-------\t--------------\t\t\t-----"

# Read the /etc/passwd file, filter for /bin/bash users, and format the output
awk -F: '/\/bin\/bash$/ {
    printf "%-16s\t%-6s\t%-7s\t%-24s\t%-s\n", $1, $3, $4, $6, $7
}' /etc/passwd

exit 0
