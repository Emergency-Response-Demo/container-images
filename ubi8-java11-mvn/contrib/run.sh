#!/bin/bash

set -eu

if [ -n "${MAVEN_MIRROR_URL}" ]; then

  echo "Set Maven mirror to ${MAVEN_MIRROR_URL}"

  xml="<mirror>\n\
      <id>mirror.default</id>\n\
      <url>${MAVEN_MIRROR_URL}</url>\n\
      <mirrorOf>external:*</mirrorOf>\n\
    </mirror>\n\
    <!-- ### configured mirrors ### -->"

  sed -i "s|<!-- ### configured mirrors ### -->|$xml|" "/m2/settings.xml"

fi

bash /opt/jboss/container/java/run/run-java.sh
