#!/bin/bash
set -euf -o pipefail

##
# Use apt-get to install Emacs dependencies.
#
#
# Author: Joel Parker Henderson (joel@joelparkerhenderson.com)
# License: GPL
# Updated: 2015-01-25
##

# Install requirements
apt-get-install-emacs-reqs

# Install basic packages
apt-get install -y libc6-dev
apt-get install -y libncurses5-dev
apt-get install -y zlib1g-dev

# Install image file formats
apt-get install -y libjpeg-dev
apt-get install -y libpng-dev
apt-get install -y libtiff4-dev
apt-get install -y libgif-dev

# Install other packages -- some of these may not work
apt-get install -y xaw3dg-dev
apt-get install -y libice-dev
apt-get install -y libsm-dev
apt-get install -y libx11-dev
apt-get install -y libxext-dev
apt-get install -y libxi-dev
apt-get install -y libxmu-dev
apt-get install -y libxmuu-dev
apt-get install -y libxpm-dev
apt-get install -y libxrandr-dev
apt-get install -y libxt-dev
apt-get install -y libxtrap-dev
apt-get install -y libxtst-dev
apt-get install -y libxv-dev
apt-get install -y x-dev
apt-get install -y xlibs-static-dev
