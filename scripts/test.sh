#!/bin/bash

# Create build directory

if [ -e tmp ]; then
    echo "tmp/ already exists"
else
    mkdir tmp
fi



# Compile SCSS sources to nwds.css, keep in tmp until later
printf "##teamcity[compliationStarted compiler='npm-sass']\n";

node_modules/.bin/npm-sass src/scss/nwds.scss > tmp/nwds.css
if [ $? -ne 0 ]; then
    echo "ERROR: Sass step failed"
    exit 1
fi

printf "##teamcity[compliationFinished compiler='npm-sass']\n";

printf "##teamcity[message text='Running tests' status='NORMAL']\n";


printf "##teamcity[message text='Running tests' status='NORMAL']\n";

#
# TODO: run csslint on tmp/nwds.css  ...  and/or other appropriate tests
#


exit 0
