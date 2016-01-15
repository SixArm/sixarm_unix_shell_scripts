#!/usr/bin/env zsh

##
# Duplicate detector: a general-purpose line-oriented key tracker.
#
# The input lines use this format:
#
#     <key> <note>
#
# The output lines are the duplicates and use this format:
#
#     <key> <note of first hit> <note of current hit>
#
# The key is any identifier you want to compare, such as a checksum.
# The key must be a command line token, i.e. no spaces, no quotes, etc.
#
# The note is anything you want in the printout, such as a file name.
# The note is only for printout; the note is not used for comparison.
#
# The output prints the note from the first matching line first,
# then the note from the second matching linee.
#
# Example file demo.txt:
#
#     A Alice
#     B Bob
#     A Anna
#
# Example command:
#
#     $ cat demo.txt | dups.zsh
#     A Alice Anna
#
# To detect duplicate files, we can use a checksum:
#
#     find . -type f -exec sha512sum '{}' \; | dups.zsh
#
# This script requires the zsh shell.
# If you use bash instead of zsh,
# see our repo for a bash version.
#
# Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
# License: Any of BSD, MIT, GPL.
# Repo: https://github.com/SixArm/sixarm_unix_shell_scripts
##

unset track
typeset -A track
while read -r key val; do
  if (( ${+track[$key]} )); then
    print $key $track[$key] $val
  else
    track[$key]="$val"
  fi
done
