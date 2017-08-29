# Unix » shell scripts for sh, bash, tcsh, zsh, etc.

This repo has lots of Unix shell scripts that are utilities.


## Command line boosters


### awk

  * [awk-remove-dupe-lines](awk-remove-dupe-lines): Remove duplicate lines in a file without sorting.


### sed

 * [sed-char-to-html-entity-name](sed-char-to-html-entity-name): sed script to change all non-HTML characters to their HTML entity names.
 * [sed-delete-blank-lines](sed-delete-blank-lines): Delete all blank lines, i.e. lines with no characters.
 * [sed-delete-duplicate-consecutive-lines](sed-delete-duplicate-consecutive-lines): Delete duplicate, consecutive lines from a file (emulates "uniq").
 * [sed-delete-duplicate-nonconsecutive-lines](sed-delete-duplicate-nonconsecutive-lines): Delete duplicate, nonconsecutive lines from a file.
 * [sed-delete-leading-and-trailing-whitespace](sed-delete-leading-and-trailing-whitespace): Delete leading and trailing whitespace (spaces and tabs).
 * [sed-delete-leading-blank-lines](sed-delete-leading-blank-lines): Delete all leading blank lines at top of file.
 * [sed-delete-leading-whitespace](sed-delete-leading-whitespace): Delete leading whitespace (spaces and tabs).
 * [sed-delete-most-html-tags](sed-delete-most-html-tags): Delete most HTML tags (accommodates multiple-line tags)
 * [sed-delete-newlines](sed-delete-newlines): Use sed to delete all the newlines except the last one, which we want for normal output.
 * [sed-delete-trailing-blank-lines](sed-delete-trailing-blank-lines): Delete all trailing blank lines.
 * [sed-delete-trailing-whitespace](sed-delete-trailing-whitespace): Delete trailing whitespace (spaces and tabs).
 * [sed-extract-version](sed-extract-version): sed script to print the VERSION string from a text file.
 * [sed-join-equal-sign-lines](sed-join-equal-sign-lines): sed script to join lines that end with equal signs.
 * [sed-simple-quotes-and-dashes](sed-simple-quotes-and-dashes): Change smart characters into simple characters.
 * [sed-uncolor](sed-uncolor): sed script to uncolor lines by removing ascii color characters.


### directory

 * [dir-is-empty](dir-is-empty): Detect if a directory is empty or not.


### file

File scripts to print a given [ls](ls) field:

 * [file-permissions](file-permissions)
 * [file-link-count](file-link-count)
 * [file-user-name](file-user-name)
 * [file-user-number](file-user-number)
 * [file-group-name](file-group-name)
 * [file-group-number](file-group-number)
 * [file-size](file-size)


### find

 * [find-broken-symlinks](find-broken-symlinks): Find broken symlinks.
 * [find-empty-directories](find-empty-directories): Find empty directories.
 * [find-fast](find-fast): Find script with pruning of /dev, /proc, /tmp, .git, .svn, etc .
 * [find-file-size](find-file-size): Print each file's size and name.
 * [find-file-size-sort](find-file-size-sort): Print each file's size and name, with sort by size.
 * [find-git-repos](find-git-repos): Find git repostitory directories.
 * [find-git-repos-fast](find-git-repos-fast): Find git repostitory directories by using faster functions.


### date

 * [date-stamp](date-stamp): Print the current date stamp UTC in a user-friendly format.
 * [date-stamp-shortest](date-stamp-shortest): Print the current date stamp UTC in the shortest format.


### history

 * [history-count-commands](history-count-commands): Count your history commands.
 * [history-rank](history-rank): List your most-frequent history commands.
 * [history-clear](history-clear): Clear the history in bash and zsh.

### grep

 * [grep-medium-words](grep-medium-words): Grep for typical words, length 4-7 characters, all lowercase, a-z.
 * [grep-v-web-bots](grep-v-web-bots): grep without web robot strings like robots.txt, Googlebot, Mouseflow, etc.
 * [grep-v-web-chaff](grep-v-web-chaff): grep without web chaff like lines that have .css, .js, .png.


### lsof

 * [lsof-i-established](lsof-i-established): Show current active connections i.e. that say "ESTABLISHED".
 * [lsof-i-listen](lsof-i-listen): Show current listening connections i.e. that say "LISTEN".
 * [lsof-link-count-less-than-1](lsof-link-count-less-than-1): Shows you all open files that have a link count less than 1.


### dig

 * [dig-soa](dig-soa): Dig a domain's start of authority nameserver.
 * [dig-subdomains](dig-subdomains): Dig a domain's subdomains


### gpg

 * [gpg-decrypt](gpg-decrypt): GPG script to decrypt a file with our typical settings.
 * [gpg-encrypt](gpg-encrypt): GPG script to encrypt a file with our typical settings.


### uri &amp; url

 * [uri-escape](uri-escape): URI script to escape text, for example a CGI query string.
 * [uri-unescape](uri-unescape): URI script to unescape text, for example a CGI query string.
 * [uri-scheme](uri-scheme): Parse a URI to its fields, for example host, query, fragment.
 * [uri-relate](uri-relate): Combine a base URI and relative URI to an absolute URI.


### path

 * [addpath](addpath): Add path(s) to the PATH environment variable
 * [rmpath](rmpath): Remove path(s) from the PATH environment variable.


### wc

 * [wc-all-files-in-directory](wc-all-files-in-directory): Count the lines in all the files in a directory.
 * [wc-l](wc-l): Print the number of lines of a file.


### random passwords

 * [random-password-encrypt](random-password-encrypt): Generate a random password and encrypt it.


### processes

 * [kill-with-user](kill-with-user): Kill a process with a given user.
 * [kill-all-zombie-parents](kill-all-zombie-parents): Kill all processes that are parents of zombies.
 * [ps-top-mem](ps-top-mem): Print the processes that are using the most RAM.
 * [shell-command](shell-command): Print the current running shell command e.g. '/bin/bash'.


### copying

 * [cp-progress](cp-progress): Copy files using a command-line progress bar.


### networking

 * [infiltrated-blacklisted](infiltrated-blacklisted): Block known dirty hosts from reaching your machine.
 * [my-ip](my-ip): Print this system's IP address via whatismyip.org
 * [netstat-listening-easy](netstat-listening-easy): Shorthand to use netstat to listen and print our typical output.
 * [nmap-probe](nmap-probe): Get info about remote host ports and OS detection.


### scripting

 * [cddo](cddo):  Run a command in each directory.
 * [command-is-installed](command-is-installed): If a given command installed, then return true.
 * [keep](keep): Keep running a command every time any file it looks at is changed.
 * [no](no): Shorthand to always return "n"
 * [while-read-do-cd](while-read-do-cd): For each line of input on command line, cd into a path then run a command.


### compression

 * [extract](extract): Extract a file using best-guess of tar, bzip, rar, gz, zip, etc.
 * [tar-bzip2](tar-bzip2): Run tar using bzip2 compression.


### text

 * [between](between): between: print the lines of a file that are between match $1 and match $2.
 * [camelize](camelize): Convert text to camel-case like FooGooHoo.
 * [diff-sort](diff-sort): Shorthand to diff with sort.
 * [file-encode-utf-8](file-encode-utf-8): Convert encoding of a file to unix utf-8.
 * [file-line-num](file-line-num): Print a file's line at a given line number.
 * [json-to-xml](json-to-xml): json-to-xml is a pipe command to convert
 * [h1-links](h1-links): Convert the first &lt;h1&gt; link in a stream to an HTML list item.
 * [summary-line](summary-line): Summarize a text file in one line.


### text replacement

 * [uuid-line-fill](uuid-line-fill): uuid-filler reads input lines and fills in secure random UUIDs.
 * [version-file-text-changer](version-file-text-changer): Search-and-replace the VERSION number in a text file.


## text sets

 * [union](union): set "union" of the inputs' lines.
 * [intersect](intersect): set "intersect" of the inputs' lines.
 * [except](except): set "except" of the inputs' lines a.k.a. set (A - B).
 * [extra](extra): set "extra" of the inputs' lines, a.k.a. set (B - A).


### media

 * [ffmpeg-x11-screencast](ffmpeg-x11-screencast): Record a screencast and convert it to an mpeg movie.
 * [flac-to-ogg](flac-to-ogg): Convert sound files from FLAC format to Ogg format.
 * [gs-combine-pdf](gs-combine-pdf): Ghostscript: combine multiple PDFs into one readable, searchable, PDF
 * [mount-iso](mount-iso): Mount a .iso file.


### fonts

  * [font-file-to-family](font-file-to-family): Parse a font file to the preferred family string.
  * [font-file-to-full-name](font-file-to-full-name): Parse a font file to the full name string.
  * [font-unzip](font-unzip): Unzip a font zip file and move fonts to a family directory


### sysadmin

 * [ls-tree](ls-tree): List files in your current directory recursively shown as a tree.
 * [mkcd](mkcd): Make a directory with 'mkdir' then change into it with 'cd'.
 * [os-version-info](os-version-info): Show operating system version information.
 * [reboot-kernel](reboot-kernel): Quickly (soft-)reboot skipping hardware checks.
 * [screenrc](screenrc): Keybindings.
 * [sort-rank](sort-rank): Sort command-line input by rank.
 * [susu](susu): Shorthand for: sudo su -


### bash

 * [bind-list-functions-and-bindings](bind-list-functions-and-bindings): List Bash bind keyboard shortcuts.
 * [stty-list-functions-and-bindings](stty-list-functions-and-bindings): List Bash stty keyboard shortcuts.


### OS X

 * [brew-cask-repair](brew-cask-repair): Repair Homebrew manager on OSX.


## Specific needs


### Applications

 * [gimp-2.7.1](gimp-2.7.1): Launch GIMP 2.7.1 from our /opt directory with our library path settings.
 * [gmail](gmail): Check your unread gmail from the command line.
 * [gravatar](gravatar): Gravatar: generate a gravatar URI for a given email address.
 * [spam](spam): Move spam email messages out of my inbox folder and into my spam folder.


### Images

 * [convert-ico-to-png](convert-ico-to-png): Convert an ICO image file to a PNG image file.
 * [glue-sprites`: Use the `glue](glue-sprites`: Use the `glue) command to compress a directory of images to sprites.


### Favicon

 * [favicon-fetch](favicon-fetch): Download a web page's favicon.
 * [html-to-favicon-url](html-to-favicon-url): Parse HTML to extract the favicon URL.


### Location

 * [geocode-address-to-lat-lng](geocode-address-to-lat-lng): Geocode an addres to a latitude and longitide.


### Ubuntu

 * [empty-trash](empty-trash): Empty the trash on an Ubuntu system.


### FTP, ProFTPD, and xferlog

 * [proftpd-stats-date-summary-of-login-success](proftpd-stats-date-summary-of-login-success): Count successful logins per date.
 * [xferlog-stats-count](xferlog-stats-count): Count FTP transfer log items per date, with options for filtering.
 * [xferlog-stats-date-summary](xferlog-stats-date-summary): Print statistics with date summary information.


### SixArm Setup

 * [openssl-req-new-key-pem-for-sixarm](openssl-req-new-key-pem-for-sixarm): OpenSSL script to generate a new key file for SixArm.com
 * [sixarm-setup-glassfish](sixarm-setup-glassfish): How to download and install Glassfish version 3 with typical settings.
 * [sixarm-setup-server](sixarm-setup-server): Fresh unix install for a typical sixarm server.


## Ruby


### Ruby administration

 * [ruby-remove](ruby-remove): This script will remove all ruby-related files that we know about. DANGEROUS!
 * [ruby-versioner](ruby-versioner): Set the Ruby environment to be a particular version of Ruby.


### Ruby gem

 * [gem-paths](gem-paths): Prints your gem paths by calling "gem env" then matching
 * [gem-test](gem-test): Gem script to run all the test files.
 * [gem-update](gem-update): Run gem update, install, tumble, and set up our typical gem sources.
 * [gem-fixer](gem-fixer): Advises if any gems need fixing or updates. [Deprecated]


### Ruby managers

* [ruby-build-install](ruby-build-install): Install `ruby-build` where we want it.
 * [ruby-build-update](ruby-build-update): Use `ruby-build` to update Ruby in our preferred locations.
 * [ruby-install-install](ruby-install-install): Install `ruby-install`` where we want it.


### Ruby testing and documentating

 * [rcov-easy](rcov-easy): Run rcov on our typical test files.
 * [ruby-header-comments-to-rdoc](ruby-header-comments-to-rdoc): For each input file name, get the header comments and emit rdoc format.
 * [ruby-metaprogramming-metric](ruby-metaprogramming-metric): How many metaprogramming methods are in your Ruby code?
 * [yardoc-easy](yardoc-easy): Run yardoc on all our lib files.


### Rails

 * [rails-deploy](rails-deploy): Rails script to do a simple deployment from the command line.
 * [rails-metaprogramming-metric](rails-metaprogramming-metric): How many meta-programming methods are in your Rails project?
 * [rails-script-server](rails-script-server): rails-script-server - A better script/server alias.
 * [rails-script-server-colorizer](rails-script-server-colorizer): Colorize our rails server output.
 * [rails-test-unit](rails-test-unit): Run our typical test files
 * [rails-word-count](rails-word-count): Shows the word count of each file in a Rails app subdirectory.
 * [rails_root_vendor_plugins](rails_root_vendor_plugins): Print a list of the Rails plugins in ./vendor/plugins


## Amazon Web Services

 * [aws-pem-file-to-fingerprint](aws-pem-file-to-fingerprint): Given a AWS PEM key pair file, print the fingerprint.
