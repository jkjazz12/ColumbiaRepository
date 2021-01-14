#!/usr/bin/env bash

# Check for root access
if [ "$EUID" -ne 0 ]
then
   echo "Please run this script with sudo"
   exit
fi

# Replace student files
cp ~/Documents/day_one_resources/user.hashes /
cp ~/Documents/day_one_resources/str.sh /tmp

# Remove teacher demo files
rm /tmp/revshell.sh /tmp
rm /tmp/listen.sh
rm /tmp/a9xk.sh

# Change ownership and permissions of these scripts to the 'jack' user
chown -R jack:jack /user.hashes /tmp/str.sh
shmod -R 0644 /tmp/str.sh /user.hashes
