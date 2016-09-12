#!/bin/bash
#
# URI script to encode text, for example a CGI query string.
#
# This implementation works by using the shell.
#
# Syntax: 
#
#     urldecode <string>
#
# Example:
#
#     $ urldecode "foo%26bar"
#     foo&bar
#
# Credit: 
#
#   * https://gist.github.com/cdown/1163649
#
# Command: urldecode
# Version: 1.0.0
# Created: 2016-09-12
# Updated: 2016-09-12
# License: MIT
# Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
##

urldecode() {
    # urldecode <string>

    local url_encoded="${1//+/ }"
    printf '%b' "${url_encoded//%/\\x}"
}

urldecode "$1"
