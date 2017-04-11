#!/bin/bash

echo "version"
echo "npm_package_version="$npm_package_version

echo "cp build/Release/nwds.css assets/css/"
echo "cp build/Release/_footer.html assets/html/"
echo "git add -A assets"

echo "faking an error"
exit 1
