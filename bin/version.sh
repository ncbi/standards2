#!/bin/bash

# Inject new version number into footer variable


SEDEXPR="s/\"[0-9]\.[0-9]\.[0-9]\";/\""$npm_package_version"\";/"
cat assets/html/_footer.html | sed $SEDEXPR > tmp/_footer.html
DIF=`diff -q assets/html/_footer.html tmp/_footer.html`
if [ "$DIF" = "" ]; then
    echo "ERROR: sed step failed"
    exit 1
fi

cp tmp/nwds.css assets/css/
cp tmp/_footer.html assets/html/
git add -A assets

exit 0
