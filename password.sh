#!/bin/bash

# Function to generate a random password
function generate_password() {
  local length=$1
  cat /dev/urandom | tr -dc 'a-zA-Z0-9!@#$%^&*()-_=+[]{}|;:,.<>? ' | fold -w ${length} | head -n 1
}

# Prompt user for password length
echo -n "Enter password length: "
read length

# Generate and display the random password
generated_password=$(generate_password ${length})
echo "Generated password: ${generated_password}"
