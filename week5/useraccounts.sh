#!/bin/bash
echo -e "Cat command to display information files like User-Accounts at (cat /etc/passwd), can be very messy and show too much unneccessary info like:  \n"
echo -e "But using AWK can neaten things up-   \n\n"
# Display the header for the table
echo -e "Username\t\tUserID\tGroupID\tHome Directory\t\t\tShell"
echo -e "--------\t\t------\t-------\t--------------\t\t\t-----"

# Read the /etc/passwd file and format the output
while IFS=: read -r username password uid gid description home shell; do
    printf "%-16s\t%-6s\t%-7s\t%-24s\t%-s\n" "$username" "$uid" "$gid" "$home" "$shell"
done < /etc/passwd

exit 0
# Display the header for the table
echo -e "Username\t\tUserID\tGroupID\tHome Directory\t\t\tShell"
echo -e "--------\t\t------\t-------\t--------------\t\t\t-----"

# Read the /etc/passwd file and format the output
while IFS=: read -r username password uid gid description home shell; do
    printf "%-16s\t%-6s\t%-7s\t%-24s\t%-s\n" "$username" "$uid" "$gid" "$home" "$shell"
done < /etc/passwd

exit 0
