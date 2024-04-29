#!/bin/bash

# define the record file path
record_file="/path/to/record/file.txt"

# prompt the user for their name
echo "Enter your name:"
read name

# check if the name is empty
if [ -z "$name" ]; then
  echo "Name cannot be empty."
  exit 1
fi

# greet the user
echo "Hello, $name! Welcome to the Personal Record Management System."

# prompt the user to choose an action
echo "Please choose an action:"
echo "1. Add new record"
echo "2. Edit existing record"
echo "3. Search for record"
echo "4. Generate report"
echo "5. Quit"
read action

# perform the corresponding action based on user input
case $action in
  1)
    # add new record
    echo "Enter the record details (name, age, gender, address):"
    read record
    echo "$record" >> $record_file
    echo "Record added successfully."
    ;;
  2)
    # edit existing record
    echo "Enter the record index to edit:"
    read index
    sed -i "${index}s/.*/$record/" $record_file
    echo "Record edited successfully."
    ;;
  3)
    # search for record
    echo "Enter the search term:"
    read search_term
    grep "$search_term" $record_file
    ;;
  4)
    # generate report
    echo "Generating report..."
    # code to generate report goes here
    ;;
  5)
    echo "Exiting..."
    exit
    ;;
  *)
    echo "Invalid option, please try again."
    ;;
esac
