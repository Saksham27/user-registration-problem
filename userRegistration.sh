#!/bin/bash -x

# taking first name as input
read -p "First Name : " firstName
firstNameRegex="([A-Z]{1}[a-z]{2})"
if [[ $firstName =~ $firstNameRegex ]]
then
	echo "yes"
else
	echo "no"
fi
