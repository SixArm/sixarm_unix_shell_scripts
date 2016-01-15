#!/usr/bin/python

##
# If the `mkpasswd` utility is not installed on your system (e.g. OSX)
# then you can still easily generate passwords by using Python Passlib.
#
# First, ensure that the Passlib password hashing # library is installed.
#
#     pip install passlib
#
# Once the library is ready, you can use this script.
#
# See `mkpasswd-sha-512-via-shell` in this repo for more explanation.
#
# Credit: [Anisble](http://docs.ansible.com/ansible/faq.html#how-do-i-generate-crypted-passwords-for-the-user-module)
#
# Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
# License: GPL
# Created: 2015-08-30
# Updated: 2015-08-31
##

from passlib.hash import sha512_crypt
import getpass
print sha512_crypt.encrypt(getpass.getpass())
