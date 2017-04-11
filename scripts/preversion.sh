#!/bin/bash

echo "preversion"
echo "node_package_version="$node_package_version

printenv

echo "faking an error"
exit 1
