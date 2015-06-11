# Unix » shell scripts for sh, bash, tcsh, zsh, etc.

This repo has lots of utility scripts.


## Command line boosters


### awk

  * `awk-remove-dupe-lines`: Remove duplicate lines in a file without sorting.

### sed

 * `sed-char-to-html-entity-name`: sed script to change all non-HTML characters to their HTML entity names.
 * `sed-delete-blank-lines`: Delete all blank lines, i.e. lines with no characters.
 * `sed-delete-duplicate-consecutive-lines`: Delete duplicate, consecutive lines from a file (emulates "uniq").
 * `sed-delete-duplicate-nonconsecutive-lines`: Delete duplicate, nonconsecutive lines from a file.
 * `sed-delete-leading-and-trailing-whitespace`: Delete leading and trailing whitespace (spaces and tabs).
 * `sed-delete-leading-blank-lines`: Delete all leading blank lines at top of file.
 * `sed-delete-leading-whitespace`: Delete leading whitespace (spaces and tabs).
 * `sed-delete-most-html-tags`: Delete most HTML tags (accommodates multiple-line tags)
 * `sed-delete-newlines`: Use sed to delete all the newlines except the last one, which we want for normal output.
 * `sed-delete-trailing-blank-lines`: Delete all trailing blank lines.
 * `sed-delete-trailing-whitespace`: Delete trailing whitespace (spaces and tabs).
 * `sed-extract-version`: sed script to print the VERSION string from a text file.
 * `sed-join-equal-sign-lines`: sed script to join lines that end with equal signs.
 * `sed-simple-quotes-and-dashes`: Change smart characters into simple characters.
 * `sed-uncolor`: sed script to uncolor lines by removing ascii color characters.

### file

File scripts to print a given `ls` field:

 * `file-permissions`
 * `file-link-count`
 * `file-user-name`
 * `file-user-number`
 * `file-group-name`
 * `file-group-number`
 * `file-size`

### find

 * `find-broken-symlinks`: Find broken symlinks.
 * `find-empty-directories`: Find empty directories.
 * `find-fast`: Find script with pruning of /dev, /proc, /tmp, .git, .svn, etc .
 * `find-file-size`: Print each file's size and name.
 * `find-git-repos`: Find git repostitory directories.
 * `find-git-repos-fast`: Find git repostitory directories by using faster functions.


### date

 * `date-stamp`: Print the current date stamp UTC in a user-friendly format.
 * `date-stamp-shortest`: Print the current date stamp UTC in the shortest format.


### history

 * `history-count-commands`: Count your history commands.
 * `history-rank`: List your most-frequent history commands.


### grep

 * `grep-medium-words`: Grep for typical words, length 4-7 characters, all lowercase, a-z.
 * `grep-v-web-bots`: grep without web robot strings like robots.txt, Googlebot, Mouseflow, etc.
 * `grep-v-web-chaff`: grep without web chaff like lines that have .css, .js, .png.


### lsof

 * `lsof-i-established`: Show current active connections i.e. that say "ESTABLISHED".
 * `lsof-i-listen`: Show current listening connections i.e. that say "LISTEN".
 * `lsof-link-count-less-than-1`: Shows you all open files that have a link count less than 1.


### dig

 * `dig-soa`: Dig a domain's start of authority nameserver.
 * `dig-subdomains`: Dig a domain's subdomains


### gpg

 * `gpg-decrypt`: GPG script to decrypt a file with our typical settings.
 * `gpg-encrypt`: GPG script to encrypt a file with our typical settings.


### uri

 * `uri-escape`: URI script to escape text, for example a CGI query string.
 * `uri-unescape`: URI script to unescape text, for example a CGI query string.


### path

 * `addpath`: Add path(s) to the PATH environment variable
 * `rmpath`: Remove path(s) from the PATH environment variable.


### wc

 * `wc-all-files-in-directory`: Count the lines in all the files in a directory.
 * `wc-l`: Print the number of lines of a file.


### random text generators

 * `random-password-encrypt`: Generate a random password and encrypt it.


### random text generators for special needs

 * `random-facebook-app-id`: Facebook App Id: digits, 15 chars.
 * `random-facebook-app-api-secret`: Facebook App API Secret: M5 sum.
 * `random-linkedin-app-api-key`: LinkedIn App API Key: alphanum, 12 chars lowercase.
 * `random-linkedin-app-secret-key`: LinkedIn App Secret Key: alphanum, 16 chars.
 * `random-twitter-app-consumer-key`: Twitter App Consumer Key: alphanum, 21 chars.
 * `random-twitter-app-consumer-secret`: Twitter App Consumer Secret: alphanum, 42 chars.


### processes

 * `kill-with-user`: Kill a process with a given user.
 * `ps-top-mem`: Print the processes that are using the most RAM.


### copying

 * `cp-progress`: Copy files using a command-line progress bar.
 * `rs`: rsync script with our typical settings.


### networking

 * `infiltrated-blacklisted`: Block known dirty hosts from reaching your machine.
 * `my-ip`: Print this system's IP address via whatismyip.org
 * `netstat-listening-easy`: Shorthand to use netstat to listen and print our typical output.
 * `nmap-probe`: Get info about remote host ports and OS detection.


### scripting

 * `cddo`:  Run a command in each directory.
 * `command-is-installed`: If a given command installed, then return true.
 * `keep`: Keep running a command every time any file it looks at is changed.
 * `no`: Shorthand to always return "n"
 * `while-read-do-cd`: For each line of input on command line, cd into a path then run a command.


### compression

 * `extract`: Extract a file using best-guess of tar, bzip, rar, gz, zip, etc.
 * `tar-bzip2`: Run tar using bzip2 compression.


### text

 * `between`: between: print the lines of a file that are between match $1 and match $2.
 * `camelize`: Convert text to camel-case like FooGooHoo.
 * `diff-sort`: Shorthand to diff with sort.
 * `file-encode-utf-8`: Convert encoding of a file to unix utf-8.
 * `file-line-num`: Print a file's line at a given line number.
 * `json-to-xml`: json-to-xml is a pipe command to convert
 * `h1-links`: Convert the first &lt;h1&gt; link in a stream to an HTML list item.
 * `summary-line`: Summarize a text file in one line.


### text replacement

 * `uuid-line-fill`: uuid-filler reads input lines and fills in secure random UUIDs.
 * `version-file-text-changer`: Search-and-replace the VERSION number in a text file.


### media

 * `ffmpeg-x11-screencast`: Record a screencast and convert it to an mpeg movie.
 * `flac-to-ogg`: Convert sound files from FLAC format to Ogg format.
 * `gs-combine-pdf`: Ghostscript: combine multiple PDFs into one readable, searchable, PDF
 * `mount-iso`: Mount a .iso file.


### sysadmin

 * `apt-up`: Do apt-get update, upgrade, fix missing, install recommends, autoremove, autoclean.
 * `linux-version`: Show diagnostic details about the linux version.
 * `ls-tree`: List files in your current directory recursively shown as a tree.
 * `mkcd`: Make a directory with 'mkdir' then change into it with 'cd'.
 * `reboot-kernel`: Quickly (soft-)reboot skipping hardware checks.
 * `screenrc`: Keybindings.
 * `sort-rank`: Sort command-line input by rank.
 * `susu`: Shorthand for: sudo su -


## Specific needs


### Applications

 * `curl-favicon`: Curl script to download a favicon from Google's service.
 * `firefox-optimize`: Optimize Firefox by scrubbing old data.
 * `geocode-address-to-lat-lng`: Ruby command line script to geocode.
 * `gimp-2.7.1`: Launch GIMP 2.7.1 from our /opt directory with our library path settings.
 * `gmail`: Check your unread gmail from the command line.
 * `gravatar`: Gravatar: generate a gravatar URI for a given email address.
 * `spam`: Move spam email messages out of my inbox folder and into my spam folder.


### Ubuntu

 * `empty-trash`: Empty the trash on an Ubuntu system.
 * `ubuntu-login-sound-off`: Ubuntu script to turn off the login sound.
 * `ubuntu-login-sound-on`: Ubuntu script to turn on the login sound.


### YouTube scrape

 * `youtube-scrape-mysmarthands-asl-sign`: YouTube script to scrape the "MySmartHands" American Sign Language videos.
 * `youtube-scrape-watch-title`: YouTube script to get the "watch" title.


### Maildir

 * `maildirmake-for-all-new-users`: Make the typical Maildir directories in /etc/skel
 * `maildirmaker`: Make a typical user's mail directory for qmail or postfix.


### EasyTether

 * `easytether-connect`: Run the easytether connect command; after this, run easytether-connecting.
 * `easytether-connecting`: Run the easytether dhclient; call this after easytether-connect.


### Macintosh

 * `macbook-pro-retina-screen-manufacturer`: Show the manfactured id on a Macbook Pro Retina.


### SixArm Setup

 * `openssl-req-new-key-pem-for-sixarm`: OpenSSL script to generate a new key file for SixArm.com
 * `sixarm-setup-glassfish`: How to download and install Glassfish version 3 with typical settings.
 * `sixarm-setup-server`: Fresh unix install for a typical sixarm server.



## Ruby


### Ruby administration

 * `rvm-uninstall-danger`: Uninstall RVM (Ruby Version Manager). THIS IS DANGEROUS.
 * `ruby-remove`: This script will remove all ruby-related files that we know about. DANGEROUS!
 * `ruby-versioner`: Set the Ruby environment to be a particular version of Ruby.
 * `sysfixer`: SysFixer looks at your gems and advises you if any need fixing.


### Ruby gem

 * `gem-paths`: Prints your gem paths by calling "gem env" then matching
 * `gem-test`: Gem script to run all the test files.
 * `gem-update`: Run gem update, install, tumble, and set up our typical gem sources.


### Ruby testing and documentating

 * `rcov-easy`: Run rcov on our typical test files.
 * `ruby-header-comments-to-rdoc`: For each input file name, get the header comments and emit rdoc format.
 * `ruby-metaprogramming-metric`: How many metaprogramming methods are in your Ruby code?
 * `yardoc-easy`: Run yardoc on all our lib files.


### Rails

 * `rails-deploy`: Rails script to do a simple deployment from the command line.
 * `rails-metaprogramming-metric`: How many meta-programming methods are in your Rails project?
 * `rails-script-server`: rails-script-server - A better script/server alias.
 * `rails-script-server-colorizer`: Colorize our rails server output.
 * `rails-test-unit`: Run our typical test files
 * `rails-word-count`: Shows the word count of each file in a Rails app subdirectory.
 * `rails_root_vendor_plugins`: Print a list of the Rails plugins in ./vendor/plugins
