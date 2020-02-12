#!/bin/bash
# Authors : Jason Hill and Etash Kalra
# Date: 2/7/20

#Problem 1 Code:
#Display two messages to console and save the user responses in variables
echo "Enter a file name: "
read fileName
echo "Enter a regular expression: "
read regexCmd

#Problem 2 Code:
#Take the previous 2 commands and use them with grep
grep $regexCmd $fileName

#Problem 3 Code:
#Use grep -c with regex command for phone numbers to count them
#numbers are formatted with a dash in between, so look for:
#Any 3 numbers - any 3 numbers - any 4 numbers
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' "regex_practice.txt"

#Problem 4 Code:
#Count emails by looking for all characters in any amount before the @ symbol
#Then look for any character following the @ symbol and then a string following the .
grep -c -E '\b[A-Za-z0-9._]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b' "regex_practice.txt"

#Find phone numbers like before but this time require it starts with 303
grep -o '[3][0][3]\-[0-9]\{3\}\-[0-9]\{4\}' "regex_practice.txt"

#Save a list of emails ending in "@geocities.com" in new file "email_results.txt"
grep -E '\b[A-Za-z0-9._]+@geocities.com\b' "regex_practice.txt" >> email_results.txt
