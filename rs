#!/bin/bash
#
# rsync script with our typical settings.
#
set -o nounset
set -o errexit
set -o pipefail

rsync --archive --compress --update --verbose --progress --partial
