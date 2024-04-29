#!/bin/bash

# define the length of the password
length=12

# define the characters to use in the password
chars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_-+=<>?"

# generate the password using the defined characters and length
password=$(cat /dev/urandom | tr -dc $chars | fold -w $length | head -n 1)

# display the password to the user
echo "Generated password: $password"
