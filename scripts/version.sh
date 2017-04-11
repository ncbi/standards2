#!/bin/bash

echo "========== scripts/version.sh"
echo "version "$npm_package_version
echo ""

echo "cp build/Release/nwds.css assets/css/"
echo "cp build/Release/_footer.html assets/html/"
echo "git add -A assets"

exit 0
