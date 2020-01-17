# Copyright (c) HyperCloud Development Team.
# Distributed under the terms of the Modified BSD License.

ARG BASE_CONTAINER=codercom/code-server:2.1698
ARG JAVA_VERSION=8.0.232-open
ARG GRADLE_VERSION=6.1
ARG MAVEN_VERSION=3.6.3

FROM $BASE_CONTAINER

LABEL maintainer="Junxiang Wei <kevinprotoss.wei@gmail.com>"

USER root

# Install required deps.
RUN apt-get update && apt-get install -y \
    zip \
    unzip

# Add scripts
COPY install_tools.sh /
RUN chmod +x /install_tools.sh

USER coder

# Install required tools for java development.
# TODO: use ARG instead of fixed version
# ARG does not work with value including dash
RUN /install_tools.sh 8.0.232-open $GRADLE_VERSION $MAVEN_VERSION
