#!/bin/bash

#######
# This script queries the tenant and token from the Beanstalk environment configuration and installs Ruxit
# Only to be used in AWS Elastic Beanstalk environments
# Don't modify this file!
#######

RUXIT_TENANT=$(/opt/elasticbeanstalk/bin/get-config environment -k RUXIT_TENANT --output YAML | grep RUXIT_TENANT | awk '{print $2}')
RUXIT_TOKEN=$(/opt/elasticbeanstalk/bin/get-config environment -k RUXIT_TOKEN --output YAML | grep RUXIT_TOKEN | awk '{print $2}')

[ "x$RUXIT_TENANT" == "x" ] && echo "Need to set RUXIT_TENANT" && exit 1;
[ "x$RUXIT_TOKEN" == "x" ] && echo "Need to set RUXIT_TOKEN" && exit 1;

echo "Trying to download and install Ruxit now:"

if [ ! -d /opt/ruxit/agent ]
  then
  wget -O /tmp/ruxit-Agent-Linux.sh https://$RUXIT_TENANT.live.ruxit.com/installer/agent/unix/latest/$RUXIT_TOKEN
  chmod 755 /tmp/ruxit-Agent-Linux.sh
  chown root:root /tmp/ruxit-Agent-Linux.sh
  /tmp/ruxit-Agent-Linux.sh
fi

