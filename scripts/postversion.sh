#!/bin/bash


echo "========== scripts/postversion.sh"
echo "version "$npm_package_version
echo ""

# cleanup

rm -r build


# push

echo "You need to run these commands:"
echo "git push"
echo "git push --tags"
