### ubi8-java11-mvn

Adds runtime maven support as required by RHPAM applications.
Runtime image for Emergency Response Demo Process Service

In particular, sets mirror configs in /m2/settings.xml to pull from nexus.
This becomes critical to support kie-scanner to dynamically pull kjars (with rules) from nexus.

NOTE: If using S2I to build a target container image, base UBI containers are capable of customizing the maven settings.xml .  However, the Jenkins pipelines of ER-Demo (to include the pipeline for the process server, do not use s2i.  Instead, a "binary build" approach is utilized;  ie:  oc start-build helloBuild --follow --from-file=./target/hello.war.  Subsequently, the target container instantiated from this image will create a custom /m2/settings.xml.

NOTE: /m2/settings.xml is read when the following system property is set:  kie.maven.settings.custom=/m2/settings.xml


#### Build and Push

1) $ buildah bud -f Dockerfile -t quay.io/emergencyresponsedemo/ubi8-jdk-11-mvn:0.0.2 .
2) $ podman push quay.io/emergencyresponsedemo/ubi8-jdk-11-mvn:0.0.2 
