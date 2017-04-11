#!/bin/bash

echo "========== scripts/preversion.sh"
echo "standards2 "$npm_package_version
echo ""

#printenv

# TODO: inject ncbi_nwds_ver into footer var  

SEDEXPR="s/_NWDS_VERSION_/"$npm_package_version"/"
echo $SEDEXPR
cat build/Release/_footer.html.tmp | sed $SEDEXPR > build/Release/_footer.html

echo "faking an error"
exit 1


