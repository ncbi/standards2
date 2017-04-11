#!/bin/bash

echo "test"
echo "npm_package_version="$npm_package_version

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


