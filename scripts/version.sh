#!/bin/bash

echo "========== scripts/version.sh"
echo "version "$npm_package_version
echo ""

cp build/Release/nwds.css assets/css/
cp build/Release/_footer.html assets/html/
git add -A assets

exit 0
