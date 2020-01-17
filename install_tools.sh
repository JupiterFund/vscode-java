#!/bin/bash
set -e

# this script is called by Dockerfile to build the Docker image
JAVA_VERSION=$1
GRADLE_VERSION=$2
MAVEN_VERSION=$3

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

sdk install java "$JAVA_VERSION"
sdk install gradle "$GRADLE_VERSION"
sdk install maven "$MAVEN_VERSION"
