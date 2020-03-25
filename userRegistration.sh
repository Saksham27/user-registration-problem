#!/bin/bash -x

# taking name as input
read -p "First Name : " name


# function to validate name
# param1 : Name
function validateName() {
	firstName=`echo $1 | awk -F" " '{print $1}'`
	lastName=`echo $1 | awk -F" " '{print $2}'`

	nameRegex="([A-Z]{1}[a-z]{2})"

	if [[ $firstName =~ $nameRegex && $lastName =~ $nameRegex ]]
	then
		echo "Name is valid."
	else
		echo "Invalid Name."
	fi
}

validateName "$name"
