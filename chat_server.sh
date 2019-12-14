#!/bin/bash



#Main program
echo "Chatting program started!"
yum install netcat -y 2>/dev/null 1>/dev/null
read -p "Which port do you want to open? :>>" open_port
read -p "Add password :>>" passwd
passwd2=$(echo "$passwd" | openssl dgst -md5 | awk '{print $2}')
echo "$passwd2" > password.txt
nc -klp $open_port -e security.sh 
