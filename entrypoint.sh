#!/bin/sh

repos=$(curl -s -u $ARTIFACTORY_USER:$ARTIFACTORY_PASSWORD -X GET "${ARTIFACTORY_URL}/api/repositories" | sed -n 's|^.*"key"\s*:\s*"\(.\+\)",.*$|\1|p')

for r in $repos; do
    echo "$r:"
    artifactory-du --artifactory-url $ARTIFACTORY_URL --username $ARTIFACTORY_USER --password $ARTIFACTORY_PASSWORD --repository $r -h "/*" | sort -hr
    echo "------"
done
