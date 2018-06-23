#!/bin/bash

# Display the UID and username of the user executing this script
# Display if the user is the vagrant user or not

# Display the UID
echo "Your UID is ${UID}"

# Only display if the UID does NOT match 1000
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "Your UID does not match ${UID_TO_TEST_FOR}."
	exit 1
fi

# Display the username

USER_NAME=$(id -un)
#USER_NAME=$(id -unx)

# Test if the command suceeded
if [[ "${?}" -ne 0 ]]
then
	echo "The id command did not execute succesfully."
	exit 1
fi
echo "Your username is ${USER_NAME}."

# You can use a string test conditional
USER_NAME_TO_TEST_FOR='chucknorris'
if [[ "${USER_NAME_TO_TEST_FOR} = "${USER_NAME} ]]
then
	echo 'You are not Chuck Norris'
else
	echo 'You have a mighty beard'
fi

# Test for != for the string
# if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}"]]
# whatever ... blah blah blah
