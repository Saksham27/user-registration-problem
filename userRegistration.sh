#!/bin/bash -x

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

#fucntion to validate mobile number
# param1 : number
#91 9919819801
function validateMobileNumber() {
	mobileNumberRegex="^([0-9]{2}[ ]{1}[0-9]{10})$"
	if [[ $1 =~ $mobileNumberRegex ]]
	then
		echo "Number is valid."
	else
		echo "Invalid number."
	fi
}

# fucntion to validate password
# param1 : password
function validatePassword() {
	passwordRegex="\w{8,}"
	if [[ $1 =~ $passwordRegex ]]
	then
		echo "Password is valid."
	else
		echo "Invalid password."
	fi
}


# taking name as input
read -p "Enter Name : " name

# taking email as input
read -p "Enter Email : " email

# taking number as input
read -p "Enter Mobile number with country code : " number

# taking password from user
read -p "Enter Password : " password

validateName "$name"
validateEmail "$email"
validateMobileNumber "$number"
validatePassword "$password"
