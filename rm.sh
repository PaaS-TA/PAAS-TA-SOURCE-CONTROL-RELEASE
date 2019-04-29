#!/bin/bash

set -e
set -u

# SET VARIABLES
export BOSH_RELEASE_NAME="paasta-sourcecontrol-release"
export BOSH_DEPLOYMENT_NAME="paasta-sourcecontrol-vsphere-1.0.yml"
export BOSH_RELEASE_VERSION="1.0"

echo bosh deployment ./deployment/${BOSH_DEPLOYMENT_NAME}
bosh deployment ./deployment/${BOSH_DEPLOYMENT_NAME}

echo bosh -n delete deployment ${BOSH_RELEASE_NAME} --force
bosh -n delete deployment ${BOSH_RELEASE_NAME} --force

echo bosh -n delete release ${BOSH_RELEASE_NAME} --force
bosh -n delete release ${BOSH_RELEASE_NAME} --force

if [[ -d dev_releases/ ]];
  then
    echo sudo rm -rf dev_releases/ start
    rm -rf dev_releases/
    echo sudo rm -rf dev_releases/ end
  else
   echo not found /dev_releases
fi


if [[ -d ./.dev_builds ]];
  then
    echo sudo rm -rf .dev_builds/ start
    rm -rf ./.dev_builds/
    echo sudo rm -rf .dev_builds/ end
  else
   echo not found .dev_builds
fi



