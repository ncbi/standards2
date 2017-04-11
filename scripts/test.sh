#!/bin/bash

echo "test"
echo $node_package_version

if [ -e build ] then;
    echo "build already exists"
else
    mkdir build
fi
