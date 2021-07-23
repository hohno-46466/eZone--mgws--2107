#! /bin/sh -u

# template for 00doit.sh

PNAME=$(basename $0)
echo "$PNAME"

SRCDIR=/Users/hohno/Dropbox/Code/Arduino/CommonWorkArea/GBKA


TARGETDIR=$HOME/work-in-progress/GitHub/eZone--mgws--2107/Arduino

opts="--exclude=.Spotlight-V100"
opts="$opts --exclude=.TemporaryItems"
opts="$opts --exclude=.fseventsd"
opts="$opts --exclude=.git"
opts="$opts --exclude=${PNAME}"
opts="$opts --exclude=README.md"
opts="$opts --exclude=*.prev"
opts="$opts --exclude=*.old"

[ -d "$TARGETDIR" ] && (set -x; rsync -avE --delete $opts "$@" ${SRCDIR}/* "$TARGETDIR")
