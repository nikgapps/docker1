#!/bin/bash

# Assign arguments to variables
GIT_USER_NAME=$1
GIT_USER_EMAIL=$2
ANDROID_VERSION=$3
PACKAGE_LIST=$4
UPDATE_WEBSITE=$5
[ "$UPDATE_WEBSITE" = "1" ] && UPDATE_WEBSITE="--updateWebsite" || UPDATE_WEBSITE=""

# Configure git with the provided username and email
git config --global http.postBuffer 157286400
git config --global user.name "$GIT_USER_NAME"
git config --global user.email "$GIT_USER_EMAIL"

echo "nikgapps --sign --upload --release --androidVersion $ANDROID_VERSION --packageList $PACKAGE_LIST $UPDATE_WEBSITE"
# Now run nikgapps with the provided Android version and package list
nikgapps --sign --upload --release --androidVersion $ANDROID_VERSION --packageList $PACKAGE_LIST $UPDATE_WEBSITE
