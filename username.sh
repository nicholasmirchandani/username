#! /bin/bash
# username.sh by Nicholas Mirchandani
echo "Usernames must be between 3 and 12 characters.  It must consist of all lowercase letters, numbers, or underscores.  It must start with a lowercase letter."
echo "Enter a username: "
read USER

while echo $USER | egrep -v "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1
do
   echo "You must enter a valid username - It must be between 3 and 12 characters!  It must also be all lowercase, numbers, or underscores.  Must start with a lowercase letter."
   echo "Enter a username: "
   read USER
done
echo "Thank you"
