#!/bin/bash

echo "preversion"
echo "npm_package_version="$npm_package_version

printenv

echo "faking an error"
exit 1
