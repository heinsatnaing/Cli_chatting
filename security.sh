#!/bin/bash
#function
Help(){
	echo ""
	echo "	Type "exit" if u want to exit"
	echo "	Contact 09956106989 or koheinsat@gmail.com"
	echo ""
}

about(){
	echo
	echo "	Type "exit" if u want to exit"
	echo "	This is written by Hein Sat Naing."
	echo "	Contact = koheinsat@gmail.com"
	echo "	Thanks for using my program!!"
	echo
}



#main
echo "Welcome! Please type password."
read tmp_passwd
tmp_password=$(echo "$tmp_passwd" | openssl dgst -md5 | awk '{print $2}')
passwd3=$(cat password.txt)
if [ "$tmp_password" = "$passwd3" ]; then
        echo "Connected succed!"
	echo "Add username!"
	read user
	echo "You successfully connected chatting room!"
else
        echo "Connection refused! Error code 201"
        exit 201
fi

while true
do
        read input
        case $input in
                "help") Help
                ;;
                "about") about
		;;
		"exit") exit
		;;
		*) echo "$user :>>$input"
        esac
done
