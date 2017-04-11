#!/bin/bash


echo "========== scripts/postversion.sh"
echo "version "$npm_package_version
echo ""


# push

echo "git push"
echo "git push --tags"


# cleanup

echo "rm -r build/"s
