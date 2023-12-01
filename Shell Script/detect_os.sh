#!/bin/bash

remote_server=$1

ssh -q $remote_server 'uname -a' | grep -q Linux
if [ $? -eq 0 ]; then
  echo "$remote_server is Linux"
else
  echo "$remote_server is Windows"
fi



# make it executable using the following command:
chmod +x detect_os.sh

# Then, we can run the script to check the OS of a remote server by specifying its hostname
./detect_os.sh abc.com

# This will print the following output:
abc.com is Linux

# If the remote server is Windows, then it will print
abc.com is Windows
