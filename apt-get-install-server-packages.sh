# Use apt-get to install server packages suitable for a a full stack server,
# with a webserver, mailserver, many databases and programming languages, etc.
 
echo "Installing many packages..."

echo "Development tools"
apt-get install -y build-essential curl emacs gcc openssl vim

echo "Programming languages"
apt-get install -y erlang golang java7-jdk lua5.2 perl php5 python ruby1.9.3 

echo "Version control systems"
apt-get install -y cvs git git-svn mercurial subversion

echo "Database servers"
apt-get install -y postgresql redis-server sqlite3 

echo "Libraries"
apt-get install -y e2fslibs-dev libc-bin libcurl4-gnutls-dev libffi6 libffi-dev libgdbm3 libgdbm-dev libglibmm-2.4-dev libgnomeui-dev libgtk2.0-dev libicu-dev libmagic-dev libncurses5 libncurses5-dev libreadline6 libreadline6-dbg libreadline6-dev libreadline-java libruby libsdl1.2-dev libssl0.9.8 libsasl2-2 libsasl2-modules libssl-dev libtool libsvn-perl libsvn-ruby1.8 libxine1-ffmpeg libxslt1-dev zlib1g zlib1g-dev

echo "System utilities"
apt-get install -y ack-grep atop autoconf automake1.9 bashdb bison byacc bzr checkinstall cron-apt cryptsetup curl deborphan devscripts dkms elinks fakeroot gettext ghex gperf graphviz groff hashalot htop intltool iproute less language-pack-en-base linux-base locales lsb lynx make makepasswd man-db mc meld mime-support most nano ncurses-term p7zip-full patch pcregrep ppp-dev pv readline-common rsync sasl2-bin screen sysfsutils tclreadline tla udev unrar-free unzip uuid uuid-dev uuid-runtime xauth 

echo "Apache webserver"
apt-get install -y apache2 apache2-doc apache2-utils apache2.2-common apache2-mpm-prefork apache2-prefork-dev libapr1 libaprutil1 libpq5 libaprutil1-dev libapr1-dev libexpat1 ssl-cert lynx elinks

echo "Vim editor"
apt-get install -y vim vim-addon-manager vim-doc vim-runtime vim-scripts exuberant-ctags 

echo "Emacs editor"
apt-get install -y cscope cscope-el dictd emacs emacs-goodies-el emacs-jabber libgif-dev slime texinfo

echo "Ncurses"
apt-get install -y libncurses5 libncurses5-dbg libncurses5-dev libncursesw5 libncursesw5-dbg libncursesw5-dev ncurses-base ncurses-hexedit ncurses-term

echo "GCC compiler"
apt-get install -y gcc gcc-multilib binutils bison build-essential cscope cgdb coreutils cpp doxygen exuberant-ctags flex g++ gdb libgcc1 libgif-dev libstdc++6 make texinfo scons

echo "Networking"
apt-get install -y curl libssl-dev libv8-dev npm openssl s3cmd

echo "Perl"
apt-get install -y libdatetime-perl libdbi-perl libdbd-mysql-perl libclass-autouse-perl libcrypt-passwdmd5-perl libhtml-template-perl libimage-size-perl libmime-lite-perl libnet-dns-perl liburi-perl libhtml-tagset-perl libhtml-parser-perl libwww-perl libwww-perl libgd-gd2-perl libmailtools-perl libunicode-maputf8-perl libxml-simple-perl libio-stringy-perl libcaptcha-recaptcha-perl libdigest-hmac-perl libgd-graph-perl librpc-xml-perl libsoap-lite-perl libxml-rss-perl libstring-crc32-perl libxml-atom-perl libmath-bigint-gmp-perl liburi-fetch-perl libcrypt-dh-perl perlmagick libclass-accessor-perl libclass-trigger-perl libclass-data-inheritable-perl libgnupg-interface-perl libmail-gnupg-perl libtext-vcard-perl libwww-curl-perl

echo "Python"
apt-get install -y python python-central python-configobj python-dateutil python-gdbm python-setuptools python-paramiko python-parsedatetime python-pycurl python-pyicu python-pygments python-pyinotify python-pysqlite2 python-unit python-setuptools python-simplejson python-support python-twisted python-vobject python-zope.interface pyqt-tools pyqt4-dev-tools

echo "Ruby"
apt-get install -y ruby1.9.3 ruby1.9.1 ruby1.9.1-dev ruby1.9.1-examples ruby1.9.1-full ruby ruby-dev ruby-event-loop ruby-full ruby-pkg-tools ruby-prof rubybook rubygems rubygems-doc rake graphviz javascript-common libactiveldap-ruby libactiveldap-ruby-doc libalgorithm-diff-ruby libamazon-ruby libbluecloth-ruby libbsearch-ruby libbuilder-ruby libcmdparse-ruby libcurl4-gnutls-dev libdaemons-ruby libdbd-mysql-ruby libdbd-pg-ruby libdbd-sqlite3-ruby libescape-ruby libferret-ruby libffi6 libffi-dev libffi-ruby1.9.1 libgettext-ruby-util libgdbm3 libgdbm-dev libgdbm-ruby1.9.1 libglib2-ruby libheckle-ruby libhighline-ruby libhighline-ruby-doc libhmac-ruby libhpricot-ruby libihelp-ruby libinline-ruby libinotify-ruby libjs-prototype libjson-ruby libjson-ruby-doc liblockfile-ruby liblog4r-ruby libmagic-dev libmagickwand-dev libmaruku-ruby libmemcache-client-ruby libmime-types-ruby libmocha-ruby libncurses-ruby libnet-ssh-ruby1.8 libnspr4-dev libopen4-ruby libopenid-ruby libpgsql-ruby libqt4-ruby librack-ruby librmagick-ruby librspec-ruby libruby libsequel-ruby libsnmp-ruby libsqlite3-ruby libtext-format-ruby libtext-format-ruby-doc libtidy-ruby libvorbisfile-ruby libwww-mechanize-ruby libwww-mechanize-ruby-doc libxml-ruby libxmmsclient-ruby zlib1g-dev libhighline-ruby1.9.1 libhpricot-ruby1.9.1 libhtmlentities-ruby1.9.1 libhtree-ruby1.9.1 libhttpclient-ruby1.9.1 libi18n-ruby1.9.1 libimage-size-ruby1.9.1 libinnate-ruby1.9.1 libinotify-ruby1.9.1 libkrb5-ruby1.9.1 liblocale-ruby1.9.1 libmapscript-ruby1.9.1 libmathml-ruby1.9.1 libmecab-ruby1.9.1 libmemcache-client-ruby1.9.1 libmixlib-cli-ruby1.9.1 libmp3tag-ruby1.9.1 libmsgpack-ruby1.9.1 libmysql-ruby1.9.1 libnarray-ruby1.9.1 libnarray-ruby1.9.1-dbg libncurses-ruby1.9.1 libnet-netrc-ruby1.9.1 libnet-scp-ruby1.9.1 libnet-sftp2-ruby1.9.1 libnet-ssh-gateway-ruby1.9.1 libnet-ssh-multi-ruby1.9.1 libnet-ssh2-ruby1.9.1 libnokogiri-ruby1.9.1 liboauth-ruby1.9.1 libogginfo-ruby1.9.1 libole-ruby1.9.1 libopen4-ruby1.9.1 libopengl-ruby1.9.1 libpacket-ruby1.9.1 libpgsql-ruby1.9.1 libprawn-ruby1.9.1 libqdbm-ruby1.9.1 librack-ruby1.9.1 libramaze-ruby1.9.1 libreadline-gplv2-dev libreadline-ruby1.9.1 librb-inotify-ruby1.9.1 libredcloth-ruby1.9.1 libremctl-ruby1.9.1 librspec-ruby1.9.1 libruby1.9.1 libruby1.9.1-dbg libsdl-ruby1.9.1 libsequel-ruby1.9.1 libsexp-processor-ruby1.9.1 libsinatra-ruby1.9.1 libspreadsheet-ruby1.9.1 libsqlite3-ruby1.9.1 libstfl-ruby1.9.1 libstomp-ruby1.9.1 libsvg-graph-ruby1.9.1 libsystemu-ruby1.9.1 libtcltk-ruby1.9.1 libtokyocabinet-ruby1.9.1 libtwitter-ruby1.9.1 libtzinfo-ruby1.9.1 libuconv-ruby1.9.1 libusb-ruby1.9.1 libuuidtools-ruby1.9.1 libvalidatable-ruby1.9.1 libwirble-ruby1.9.1 libwww-mechanize-ruby1.9.1 libxml-parser-ruby1.9.1 libxml-ruby1.9.1 libyaml-dev libzip-ruby1.9.1 ri1.9.1 ruby-odbc ruby-odbc-dbg zlib1g zlib1g-dev libzlib-ruby

echo "Lua"
apt-get install -y lua5.2 liblua5.2-dev

echo "Nokogiri xml libraries"
apt-get install -y libxml2 libxml2-dev libxslt-dev
# ... the libxslt-ruby seems to be missing on some systems, so we do it independently
apt-get install -y libxslt-ruby

echo "Magick image libaries"
apt-get install -y imagemagick libmagickcore-dev libmagickwand-dev
# ... libmagick9-dev is missing on some systems
apt-get install -y libmagick9-dev  
# ... when we change from ImageMagick to GraphicsMagick, use this line:
#apt-get install -y graphicsmagick-libmagick-dev-compat  # Do not use because this uninstalls imagemagick

echo "Redis"
apt-get install -y redis-server

echo "Sqlite"
apt-get install -y libsqlite3-0 libsqlite3-dev libsqlite3-ocaml libsqlite3-ocaml-dev libdbd-sqlite3 libdbd-sqlite3-perl libdbd-sqlite3-ruby libsqlite3-ruby sqlite3 sqlite3-doc sqlite3-pcre sqlitebrowser sqliteman sqliteman-doc

echo "Mercurial"
apt-get install -y mercurial mercurial-common mercurial-git mercurial-nested

echo "Subversion"
apt-get install -y subversion subversion-tools python-subversion

echo "Zsh"
apt-get install -y zsh zsh-doc

echo "ZeroMQ" 
apt-get install -y libzmq1 libzmq-dev libzmq-dbg

echo "Postgres"
apt-get install -y postgresql postgresql-client pgadmin3

echo "GNU PG"
apt-get install -y gnupg gnupg-agent gnupg-curl gnupg-doc 

### The packages below this may require interactive installation

echo "Postfix"
apt-get install abook mb2md mutt nano postfix postfix-pcre telnet spamassassin spamc

echo "MySQL"
apt-get install mysql-server mysql-common mysql-client mytop libdbd-mysql-perl libmysqlclient-dev
apt-get install libmysql-ruby php5-mysql python-mysqldb

echo "Nagios"
apt-get install nagios3 nagios3-cgi nagios3-common nagios3-core nagios3-doc nagios-images nagios-plugins nagios-plugins-basic nagios-plugins-extra nagios-plugins-standard 
apt-get install nagios-nrpe-plugin nagios-nrpe-server libnagios-object-perl libnagios-plugin-perl nagios-snmp-plugins ndoutils-nagios3-mysql
