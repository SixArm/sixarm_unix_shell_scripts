#!/bin/sh

##
# rsync script with our typical settings.
##

rsync --archive --compress --update --verbose --progress --partial
