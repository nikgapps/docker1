#!/bin/bash

# Input parameters
ANDROID_VERSION=$1
PACKAGE_LIST=$2

# Execute the nikgapps command with the provided arguments
nikgapps -A "$ANDROID_VERSION" -P "$PACKAGE_LIST"
