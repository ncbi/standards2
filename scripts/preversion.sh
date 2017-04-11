#!/bin/bash

echo "========== scripts/preversion.sh"
echo "standards2 "$npm_package_version
echo ""


# Inject the new version number into _footer.html  

SEDEXPR="s/_NWDS_VERSION_/"$npm_package_version"/"
echo $SEDEXPR
cat build/Release/_footer.html.tmp | sed $SEDEXPR > build/Release/_footer.html
DIF=`diff -q assets/html/_footer.html build/Release/_footer.html.tmp`
if [ "$DIF" = "" ]; then 
    echo "ERROR: sed step failed"
    exit 1
fi


echo "faking an error"
exit 1


