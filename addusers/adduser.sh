#!/bin/bash
#
# Example add user script for a Morpheus operational workflow.
# 
# This simple script takes as input a single user name 
# and one or more target systems.
# It checks obtains the user password stored in the Morpheus
# Cypher path secret/user<username>.  For example, secret/usertom

# Log output to the target server
exec > /tmp/debug_log.txt 2>&1
echo "Custom Options: <%= customOptions %>"

# Get the user name from the custom input
USER="<%=customOptions.user%>"
echo "\$USER: $USER"

# Get the user's password from the Morpheus cypher store
PASSWORD=<%= cypher.read('secret/user' + customOptions.user) %>

# Check to make sure a user was specified
echo
if [ -z "$USER" ]; then
  echo "No users specified. Exiting."
  exit 1
fi

# Check if the user already exists on the target system
if id "$USER" &>/dev/null; then
  echo "User $USER already exists. Skipping."
else
# Create new user with the retrieved password
  useradd -m "$USER"
  echo "$USER:$PASSWORD" | chpasswd
  echo "User $USER added successfully with Cypher password."
fi
