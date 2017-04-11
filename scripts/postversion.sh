#!/bin/bash


echo "========== scripts/postversion.sh"
echo "standards2 "$npm_package_version
echo ""


# push

echo "git push"
echo "git push --tags"


# cleanup

rm -r build/
