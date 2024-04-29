#!/bin/bash

# define the record file path
record_file="/path/to/record/file.txt"

# welcome message
clear
echo "************************************************************"
echo "*** Welcome to the Personal Record Management System ***"
echo "************************************************************"

# prompt the user for their name
echo -n "Enter your name: "
read name

# check if the name is empty
if [ -z "$name" ]; then
  echo "Name cannot be empty."
  exit 1
fi

# greet the user
echo "Hello, $name! Welcome to the Personal Record Management System."

# main menu
while true
do
  echo -n "Please choose an action: "
  echo -n "1. Add new record"
  echo -n "    2. Edit existing record"
  echo -n "    3. Search for record"
  echo -n "    4. Generate report"
  echo -n "    5. Quit"
  read action

  # perform the corresponding action based on user input
  case $action in
    1)
      # add new record
      clear
      echo "************************************************************"
      echo "*** Adding a new record to the Personal Record System ***"
      echo "************************************************************"
      echo -n "Enter the record details (name, age, gender, address): "
      read record
      echo "$record" >> $record_file
      echo "Record added successfully."
      ;;
    2)
      # edit existing record
      clear
      echo "************************************************************"
      echo "*** Editing a record in the Personal Record System ***"
      echo "************************************************************"
      echo -n "Enter the record index to edit: "
      read index
      if [ $index -gt $(wc -l < $record_file) ] || [ $index -lt 1 ]; then
        echo "Invalid record index."
      else
        sed -i "${index}s/.*/$record/" $record_file
        echo "Record edited successfully."
      fi
      ;;
    3)
      # search for record
      clear
      echo "************************************************************"
      echo "*** Searching for a record in the Personal Record System ***"
      echo "************************************************************"
      echo -n "Enter the search term: "
      read search_term
      grep "$search_term" $record_file
      ;;
    4)
      # generate report
      clear
      echo "************************************************************"
      echo "*** Generating report from the Personal Record System ***"
      echo "************************************************************"
      # code to generate report goes here
      ;;
    5)
      # quit
      clear
      echo "************************************************************"
      echo "*** Thank you for using the Personal Record Management System ***"
      echo "************************************************************"
      exit
      ;;
    *)
      # invalid option
      clear
      echo "Invalid option, please try again."
      ;;
  esac
done
