# SixArm.com » Unix » shell scripts for sh, bash, tcsh, zsh, etc.

This repo has lots of utility scripts. 


## Command line boosters


### awk

 * <code>awk-max</code>: Shorthand for awk with max.
 * <code>awk-remove-dupe-lines</code>: Remove duplicate lines in a file without sorting.
 * <code>awk-sum</code>: Shorthand for awk with sum.


### sed

 * <code>sed-char-to-html-entity-name</code>: sed script to change all non-HTML characters to their HTML entity names.
 * <code>sed-delete-blank-lines</code>: Delete all blank lines, i.e. lines with no characters.
 * <code>sed-delete-duplicate-consecutive-lines</code>: Delete duplicate, consecutive lines from a file (emulates "uniq").
 * <code>sed-delete-duplicate-nonconsecutive-lines</code>: Delete duplicate, nonconsecutive lines from a file. 
 * <code>sed-delete-leading-and-trailing-whitespace</code>: Delete leading and trailing whitespace (spaces and tabs).
 * <code>sed-delete-leading-blank-lines</code>: Delete all leading blank lines at top of file.
 * <code>sed-delete-leading-whitespace</code>: Delete leading whitespace (spaces and tabs).
 * <code>sed-delete-most-html-tags</code>: Delete most HTML tags (accommodates multiple-line tags)
 * <code>sed-delete-newlines</code>: Use sed to delete all the newlines except the last one, which we want for normal output.
 * <code>sed-delete-trailing-blank-lines</code>: Delete all trailing blank lines.
 * <code>sed-delete-trailing-whitespace</code>: Delete trailing whitespace (spaces and tabs).
 * <code>sed-extract-version</code>: sed script to print the VERSION string from a text file.
 * <code>sed-join-equal-sign-lines</code>: sed script to join lines that end with equal signs.
 * <code>sed-simple-quotes-and-dashes</code>: Change smart characters into simple characters.
 * <code>sed-uncolor</code>: sed script to uncolor lines by removing ascii color characters.


### find

 * <code>find-broken-symlinks</code>: Find broken symlinks.
 * <code>find-empty-directories</code>: Find empty directories.
 * <code>find-fast</code>: Find script with pruning of /dev, /proc, /tmp, .git, .svn, etc.


### date

 * <code>date-stamp</code>: Print the current date stamp UTC in a user-friendly format.
 * <code>date-stamp-shortest</code>: Print the current date stamp UTC in the shortest format.


### history

 * <code>history-count-commands</code>: Count your history commands.
 * <code>history-rank</code>: List your most-frequent history commands.


### grep

 * <code>grep-medium-words</code>: Grep for typical words, length 4-7 characters, all lowercase, a-z.
 * <code>grep-v-web-bots</code>: grep without web robot strings like robots.txt, Googlebot, Mouseflow, etc.
 * <code>grep-v-web-chaff</code>: grep without web chaff like lines that have .css, .js, .png.


### lsof

 * <code>lsof-i-established</code>: Show current active connections i.e. that say "ESTABLISHED".
 * <code>lsof-i-listen</code>: Show current listening connections i.e. that say "LISTEN".
 * <code>lsof-link-count-less-than-1</code>: Shows you all open files that have a link count less than 1.


### dig

 * <code>dig-soa</code>: Dig a domain's start of authority nameserver.
 * <code>dig-subdomains</code>: Dig a domain's subdomains


### ssh

 * <code>ssh-copy-id-help</code>: SSH script to copy a pub id file to a remote server into your authorized_keys.
 * <code>ssh-fingerprint</code>: SSH script to print a server's host rsa key public fingerprint.
 * <code>ssh-keygen-with-rsa-and-email</code>: SSH script to generate our typical rsa key with a comment.
 * <code>ssh-remove-known-host</code>: SSH script to remove a known host.
 * <code>ssh-set-directory-permissions</code>: Set the correct directory permissions of the current user's ~/.ssh directory.


### gpg

 * <code>gpg-decrypt</code>: GPG script to decrypt a file with our typical settings.
 * <code>gpg-encrypt</code>: GPG script to encrypt a file with our typical settings.


### uri

 * <code>uri-escape</code>: URI script to escape text, for example a CGI query string.
 * <code>uri-unescape</code>: URI script to unescape text, for example a CGI query string.


### path

 * <code>addpath</code>: Add path(s) to the PATH environment variable
 * <code>rmpath</code>: Remove path(s) from the PATH environment variable.


### wc

 * <code>wc-all-files-in-directory</code>: Count the lines in all the files in a directory.
 * <code>wc-l</code>: Print the number of lines of a file.


### random text generators

All these methods generate random text by using the secure /dev/urandom source.

 * <code>random-alphanum</code>: Alphanumeric A-Z a-z 0-9.
 * <code>random-digits</code>: Digits.
 * <code>random-digits-faster</code>: Digits, skipping the seed.
 * <code>random-hex</code>: Hex digits 0-9 a-z.
 * <code>random-md5</code>: MD5 sum, calling the md5sum command.
 * <code>random-int</code>: Integer from 0 to max.
 * <code>random-int-faster</code>: Integer from 0 to max, skipping the seed.
 * <code>random-password</code>: Opimized password characters for high security needs.
 * <code>random-password-encrypt</code>: Optimized password characters for high security needs with encryption.
 * <code>random-password-words</code>: Memorable password of four random words from a text file.
 * <code>random-seed</code>: Seed the bash random number generator using /dev/urandom
 * <code>random-word-characters</code>: Word characters A-Z a-z and underscore.


### random text generators for special needs

 * <code>random-facebook-app-id</code>: Facebook App Id: digits, 15 chars.
 * <code>random-facebook-app-api-secret</code>: Facebook App API Secret: M5 sum.
 * <code>random-linkedin-app-api-key</code>: LinkedIn App API Key: alphanum, 12 chars lowercase.
 * <code>random-linkedin-app-secret-key</code>: LinkedIn App Secret Key: alphanum, 16 chars.
 * <code>random-twitter-app-consumer-key</code>: Twitter App Consumer Key: alphanum, 21 chars.
 * <code>random-twitter-app-consumer-secret</code>: Twitter App Consumer Secret: alphanum, 42 chars.


### processes

 * <code>kill-with-user</code>: Kill a process with a given user.
 * <code>ps-top-mem</code>: Print the processes that are using the most RAM.


### copying

 * <code>cp-progress</code>: Copy files using a command-line progress bar.
 * <code>rs</code>: rsync script with our typical settings.


### networking

 * <code>infiltrated-blacklisted</code>: Block known dirty hosts from reaching your machine.
 * <code>my-ip</code>: Print this system's IP address via whatismyip.org
 * <code>netstat-listening-easy</code>: Shorthand to use netstat to listen and print our typical output.
 * <code>nmap-probe</code>: Get info about remote host ports and OS detection.


### scripting

 * <code>cddo</code>:  Run a command in each directory.
 * <code>keep</code>: Keep running a command every time any file it looks at is changed.
 * <code>no</code>: Shorthand to always return "n"
 * <code>while-read-do-cd</code>: For each line of input on command line, cd into a path then run a command.


### compression

 * <code>extract</code>: Extract a file using best-guess of tar, bzip, rar, gz, zip, etc.
 * <code>tar-bzip2</code>: Run tar using bzip2 compression.


### text

 * <code>between</code>: between: print the lines of a file that are between match $1 and match $2.
 * <code>camelize</code>: Convert text to camel-case like FooGooHoo.
 * <code>diff-sort</code>: Shorthand to diff with sort.
 * <code>file-encode-utf-8</code>: Convert encoding of a file to unix utf-8.
 * <code>file-line-num</code>: Print a file's line at a given line number.
 * <code>json-to-xml</code>: json-to-xml is a pipe command to convert
 * <code>h1-links</code>: Convert the first &lt;h1&gt; link in a stream to an HTML list item.
 * <code>summary-line</code>: Summarize a text file in one line.


### text replacement

 * <code>uuid-line-fill</code>: uuid-filler reads input lines and fills in secure random UUIDs.
 * <code>version-file-text-changer</code>: Search-and-replace the VERSION number in a text file.


### media

 * <code>ffmpeg-x11-screencast</code>: Record a screencast and convert it to an mpeg movie.
 * <code>flac-to-ogg</code>: Convert sound files from FLAC format to Ogg format.
 * <code>gs-combine-pdf</code>: Ghostscript: combine multiple PDFs into one readable, searchable, PDF
 * <code>mount-iso</code>: Mount a .iso file.


### sysadmin

 * <code>apt-up</code>: Do apt-get update, upgrade, fix missing, install recommends, autoremove, autoclean.
 * <code>linux-version</code>: Show diagnostic details about the linux version.
 * <code>ls-tree</code>: List files in your current directory recursively shown as a tree.
 * <code>mkcd</code>: Make a directory with 'mkdir' then change into it with 'cd'.
 * <code>reboot-kernel</code>: Quickly (soft-)reboot skipping hardware checks.
 * <code>screenrc</code>: Keybindings.
 * <code>sort-rank</code>: Sort command-line input by rank.
 * <code>susu</code>: Shorthand for: sudo su -


## Specific needs


### Applications

 * <code>curl-favicon</code>: Curl script to download a favicon from Google's service.
 * <code>firefox-optimize</code>: Optimize Firefox by scrubbing old data.
 * <code>geocode-address-to-lat-lng</code>: Ruby command line script to geocode.
 * <code>gimp-2.7.1</code>: Launch GIMP 2.7.1 from our /opt directory with our library path settings.
 * <code>gmail</code>: Check your unread gmail from the command line.
 * <code>gravatar</code>: Gravatar: generate a gravatar URI for a given email address.
 * <code>spam</code>: Move spam email messages out of my inbox folder and into my spam folder.


### Ubuntu

 * <code>empty-trash</code>: Empty the trash on an Ubuntu system.
 * <code>ubuntu-login-sound-off</code>: Ubuntu script to turn off the login sound.
 * <code>ubuntu-login-sound-on</code>: Ubuntu script to turn on the login sound.


### YouTube scrape

 * <code>youtube-scrape-mysmarthands-asl-sign</code>: YouTube script to scrape the "MySmartHands" American Sign Language videos.
 * <code>youtube-scrape-watch-title</code>: YouTube script to get the "watch" title.


### Maildir

 * <code>maildirmake-for-all-new-users</code>: Make the typical Maildir directories in /etc/skel
 * <code>maildirmaker</code>: Make a typical user's mail directory for qmail or postfix.


### EasyTether

 * <code>easytether-connect</code>: Run the easytether connect command; after this, run easytether-connecting.
 * <code>easytether-connecting</code>: Run the easytether dhclient; call this after easytether-connect.


### Thinkpad Trackpoint

 * <code>find-trackpoint-device-file-for-sensitivity</code>: Find a Thinkpad's TrackPoint speed file that sets the pointer speed.
 * <code>find-trackpoint-device-file-for-speed</code>: Find a Thinkpad's TrackPoint speed file that sets the pointer speed.
 * <code>find-trackpoint-path-id</code>: Find a ThinkPad computer's TrackPoint Path ID.
 * <code>trackpoint-set-speed-and-sensitivity-to-fastest</code>: Set trackpoint speed and sensitivity to fastest settings.


### SixArm Setup

 * <code>openssl-req-new-key-pem-for-sixarm</code>: OpenSSL script to generate a new key file for SixArm.com
 * <code>sixarm-setup-glassfish</code>: How to download and install Glassfish version 3 with typical settings.
 * <code>sixarm-setup-server</code>: Fresh unix install for a typical sixarm server.



## Ruby


### Ruby administration

 * <code>rvm-uninstall-danger</code>: Uninstall RVM (Ruby Version Manager). THIS IS DANGEROUS.
 * <code>ruby-remove</code>: This script will remove all ruby-related files that we know about. DANGEROUS!
 * <code>ruby-versioner</code>: Set the Ruby environment to be a particular version of Ruby.
 * <code>sysfixer</code>: SysFixer looks at your gems and advises you if any need fixing.


### Ruby gem

 * <code>gem-paths</code>: Prints your gem paths by calling "gem env" then matching
 * <code>gem-test</code>: Gem script to run all the test files.
 * <code>gem-update</code>: Run gem update, install, tumble, and set up our typical gem sources.


### Ruby testing and documentating

 * <code>rcov-easy</code>: Run rcov on our typical test files.
 * <code>ruby-header-comments-to-rdoc</code>: For each input file name, get the header comments and emit rdoc format.
 * <code>ruby-metaprogramming-metric</code>: How many metaprogramming methods are in your Ruby code?
 * <code>yardoc-easy</code>: Run yardoc on all our lib files.


### Rails

 * <code>rails-deploy</code>: Rails script to do a simple deployment from the command line.
 * <code>rails-metaprogramming-metric</code>: How many meta-programming methods are in your Rails project?
 * <code>rails-script-server</code>: rails-script-server - A better script/server alias.
 * <code>rails-script-server-colorizer</code>: Colorize our rails server output.
 * <code>rails-test-unit</code>: Run our typical test files
 * <code>rails-word-count</code>: Shows the word count of each file in a Rails app subdirectory.
 * <code>rails_root_vendor_plugins</code>: Print a list of the Rails plugins in ./vendor/plugins

