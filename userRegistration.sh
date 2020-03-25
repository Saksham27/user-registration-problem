#!/bin/bash -x

# taking name as input
read -p "Enter Name : " name

# taking email as input
read -p "Enter Email : " email

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

# function to validate email
# param1 : Email
# abc.xyz@bl.co.in
function validateEmail() {
	emailRegex="abc((\.[A-Z]+[a-z]*[0-9]*)|(\.[A-Z]*[a-z]+[0-9]*)|(\.[A-Z]*[a-z]*[0-9]+)|^)?@bl\.co(\.[a-z]+){1,}"

	if [[ $1 =~ $emailRegex ]]
	then
		echo "Email is valid."
	else
		echo "Invalid email."
	fi
}


validateName "$name"
validateEmail "$email"
