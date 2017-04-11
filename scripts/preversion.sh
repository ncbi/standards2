#!/bin/bash

echo "========== scripts/preversion.sh"
echo "standards2 "$npm_package_version
echo ""

#printenv

# TODO: inject ncbi_nwds_ver into footer var  


cat build/Release/_footer.html.tmp | sed "s/_NWDS_VERSION/$npm_package_version/" > build/Release/_footer.html

echo "faking an error"
exit 1


