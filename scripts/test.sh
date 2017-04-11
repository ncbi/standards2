#!/bin/bash

echo "========== scripts/test.sh"
echo "standards2 "$npm_package_version
echo ""

if [ -e build/Release ]; then
    echo "build/Release already exists"
else
    mkdir build
    mkdir build/Release
fi


# Compile SCSS sources to nwds.css, keep in build/Release until later

node_modules/.bin/npm-sass src/scss/nwds.scss > build/Release/nwds.css
if [ $? -ne 0 ]; then
    echo "ERROR: Sass step failed"
    exit 1
fi

# TODO: run csslint on nwds.css



# Make a temporary copy of _footer.html with placeholder for version number 

SEDEXPR="s/"$npm_package_version"/_NWDS_VERSION_/"
echo $SEDEXPR
cat assets/html/_footer.html | sed $SEDEXPR > build/Release/_footer.html.tmp
DIF=`diff -q assets/html/_footer.html build/Release/_footer.html.tmp`
if [ "$DIF" = "" ]; then 
    echo "ERROR: sed step failed"
    exit 1
fi

exit 0





