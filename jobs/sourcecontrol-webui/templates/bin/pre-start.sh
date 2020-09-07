#!/bin/bash

set -e

JOB_NAME="sourcecontrol-webui"
SRC_DIR_NAME="/var/vcap/packages/$JOB_NAME"
WAR_PKG_NAME="${JOB_NAME}"
WAR_NAME="${JOB_NAME}.war"
TOMCAT_PKG_NAME=tomcat
ARCHIVE=$SRC_DIR_NAME/$WAR_NAME
JOB_DIR="/var/vcap/jobs/$JOB_NAME"
JOB_CONFIG="/var/vcap/jobs/sourcecontrol-webui/data/application.properties"

#UNPRESS ARCHIVE

if [[ -d /var/vcap/packages/$TOMCAT_PKG_NAME/webapps/ROOT ]]; then
  echo rm -rf /var/vcap/packages/$TOMCAT_PKG_NAME/webapps/ROOT
  rm -rf /var/vcap/packages/$TOMCAT_PKG_NAME/webapps/ROOT
else
  echo "/var/vcap/packages/$TOMCAT_PKG_NAME/ROOT not found"

fi

if [[ -f $ARCHIVE ]] ; then
  echo "Archive found"
  echo "copy..."
  cp -r $ARCHIVE /var/vcap/packages/$TOMCAT_PKG_NAME/webapps/ROOT.war
  echo "Extracting archive..."
  sudo unzip $ARCHIVE -d /var/vcap/packages/$TOMCAT_PKG_NAME/webapps/ROOT/

else
  echo "Archive not found"

fi

#COPY CONFIG
if [[ -f $JOB_CONFIG ]] ; then
  echo "JOB_CONFIG found"
  echo "JOB_CONFIG remove"
  rm /var/vcap/packages/$TOMCAT_PKG_NAME/webapps/ROOT/WEB-INF/classes/application*
  echo "copy JOB_CONFIG..."
  cp -f $JOB_CONFIG /var/vcap/packages/$TOMCAT_PKG_NAME/webapps/ROOT/WEB-INF/classes/
else
  echo "$JOB_CONFIG not found"

fi

#COPY TOMCAT CONFIG
cp -f $JOB_DIR/data/server.xml $JOB_DIR/packages/tomcat/conf/
cp -f $JOB_DIR/data/web.xml $JOB_DIR/packages/tomcat/conf/
