#!/bin/sh

##
# AWS EC2 describe-images for Canonica Ubuntu
#
# We want to create a new EC2 instance by using 
# the current long term release of Ubuntu by Canonical.
#
#   * We want to discover the AWS EC2 AMI image id.
#
#   * We use the AWS CLI tool, the EC2 command, and the describe-images subcommand.
#
#   * We use filters and a query to find the exact AMI image id.
#
#
# ## Filters
# 
# owner:
# 
#    * use "099720109477" as the account number for Canonical, the publisher of Ubuntu.
# 
# virtualization:
# 
#   * use "hva" for hardware virtual machine (HVM)
# 
#   * use "pv" for paravirtual (PV)
# 
# architecture: 
#  
#    * use "x86_64" for 64 bit
# 
#    * use "i386"' for 32 bit 
# 
# name:
# 
#   * we want the current long term release of Ubuntu
# 
#   * we know its named ubuntu bionic 18.04
# 
#   * we know we want the AMD-64 bit version
# 
#   * we know we want the server version, rather than the desktop version
# 
# 
# ## Query
# 
#   * sort by the image creation date
# 
#   * choose the last image i.e. the image with the most recent creation date.
# 
#   * The AWS query language uses the array syntax "[-1]" meaning last.
# 
#   * print the image id, which is what we need to continue our work.
##

aws ec2 describe-images \
--owners 099720109477 \
--filters \
  "Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*" \
  "Name=root-device-type,Values=ebs" \
  "Name=virtualization-type,Values=hvm" \
  "Name=architecture,Values=x86_64" \
--query "sort_by(Images, &CreationDate)[-1].ImageId"

