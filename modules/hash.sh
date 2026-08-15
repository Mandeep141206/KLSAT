#!/bin/bash

clear

echo "=============================="
echo "  HASH GENERATOR MODULE"
echo "=============================="

echo

read -p "Enter file path: " file

if [ -f "$file" ]; then

     echo
     echo "MD5 Hash:"
     md5sum "$file"

     echo
     echo "SHA1 Hash:"
     sha1sum "$file"

     echo
     echo "SHA256 Hash:"
     sha256sum "$file"

else

    echo
    echo "File does not exist."

fi
