#!/bin/bash

# Prompt the user for the path to the "bootfs" directory
read -p "Enter the path to the 'bootfs' directory: " bootfs_path

# Check if the provided path is valid
if [ ! -d "$bootfs_path" ]; then
    echo "Error: '$bootfs_path' is not a valid directory."
    exit 1
fi

# Check the "bootfs" directory
if [ "$(basename "$bootfs_path")" != "bootfs" ]; then
    echo "Error: Please provide a valid path to the 'bootfs' directory."
    exit 1
fi

# Prompt the user for a password without showing it on the screen
read -s -p "Password: " user_password

# Generate an encrypted password using OpenSSL
encrypted_password=$(echo "$user_password" | openssl passwd -6 -stdin)

# Create a user configuration file with the encrypted password
echo "admin:$encrypted_password" > "$bootfs_path/userconf"

# Display a message indicating success
echo -e "\nUser configuration has been saved to '$bootfs_path/userconf'."

# Enable SSH by creating an empty "ssh" file in the "bootfs" directory
touch "$bootfs_path/ssh"
echo -e "SSH has been enabled in '$bootfs_path/ssh'."
