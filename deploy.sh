#!/bin/bash
NEXUS_USER="droplet"
NEXUS_PASSWORD="omar1907"
NEXUS_IP="164.92.147.80"
NEXUS_REPO="npm-snapshots"
curl -u $NEXUS_USER:$NEXUS_PASSWORD -X GET "http://$NEXUS_IP:8081/service/rest/v1/components?repository=$NEXUS_REPO&sort=version" | jq "." > artifact.json
artifactDownloadUrl=$(jq '.items[].assets[].downloadUrl' artifact.json --raw-output)
package_name=$(jq -r '.items[].assets[0].npm.name + "-" + .items[].assets[0].npm.version + ".tgz"' artifact.json)
wget --http-user=$NEXUS_USER --http-password=$NEXUS_PASSWORD $artifactDownloadUrl
tar -xvzf $package_name
rm $package_name
cd package
npm install
node server.js
