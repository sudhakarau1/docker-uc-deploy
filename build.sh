#!/usr/bin/env sh

#### 
#  The following variables must be set in the build.rc file before executing this script
####
ARTIFACT_DOWNLOAD_URL="http://localhost/ibm-ucd-6.2.1.2.801550.zip"
ARTIFACT_VERSION="6.2.1.2.801550"

docker build -t stackinabox/urbancode-deploy:$ARTIFACT_VERSION \
				--build-arg ARTIFACT_DOWNLOAD_URL=$ARTIFACT_DOWNLOAD_URL \
				--build-arg ARTIFACT_VERSION=$ARTIFACT_VERSION .

