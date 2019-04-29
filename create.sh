#!/bin/bash

set -e
set -u

# SET VARIABLES
export BOSH_RELEASE_NAME="paasta-sourcecontrol-release"
export BOSH_DEPLOYMENT_NAME="paasta-sourcecontrol-vsphere-1.0.yml"
export BOSH_RELEASE_VERSION="1.0"

echo sudo bosh -n create release --force --with-tarball --name ${BOSH_RELEASE_NAME} --version  ${BOSH_RELEASE_VERSION}

sudo bosh -n create release --force --with-tarball --name ${BOSH_RELEASE_NAME} --version  ${BOSH_RELEASE_VERSION}

echo bosh -n upload release ./dev_releases/${BOSH_RELEASE_NAME}/${BOSH_RELEASE_NAME}-${BOSH_RELEASE_VERSION}.tgz

bosh -n upload release ./dev_releases/${BOSH_RELEASE_NAME}/${BOSH_RELEASE_NAME}-${BOSH_RELEASE_VERSION}.tgz

echo bosh deployment ./deployment/${BOSH_DEPLOYMENT_NAME}

bosh deployment ./deployment/${BOSH_DEPLOYMENT_NAME}

echo bosh -n deploy --no-redact
bosh -n deploy --no-redact -n
