#!/bin/sh

# from: https://www.telperion.org/2018/02/11/installing-openldap/

sudo apt install -y slapd ldap-utils

echo "--- Configuration ---"
echo "Choose MDB"

sudo dpkg-reconfigure slapd

clear
slapcat
