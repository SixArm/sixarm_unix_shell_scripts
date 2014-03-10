#!/usr/bin/env bash
#
# Duplicate detector: a general-purpose line-oriented key tracker.
#
# The input lines and ouput lines use this format:
#
#     <key> [note]
#
# The key is any identifier you want to compare, such as a checksum.
# The key must be a command line token, i.e. no spaces, no quotes, etc.
#
# The note is anything you want in the printout, such as a file name.
# The note is only for printout; the note is not used for comparison.
#
# Example to use a SHA 512 checksum to detect duplicate files on OSX:
#
#     find . -type f -exec shasum -a 512 '{}' \; | dups.zsh
#
# This script requires the bash shell.
# If you use zsh instead of bash,
# see our repo for a zsh version.
#
# Author: joel@joelparkerhenderson.com
# License: Any of BSD, MIT, GPL.
# Repo: https://github.com/SixArm/sixarm_unix_shell_scripts
#
unset track
declare -A track
while read -r key val; do
  if [[ ${track[$key]} ]]; then
    printf "$key $val\n"
  else
    track[$key]="$val"
  fi
done
