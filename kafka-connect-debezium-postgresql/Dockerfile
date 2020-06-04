FROM registry.redhat.io/amq7/amq-streams-kafka-24-rhel7:1.4.0

ENV DEBEZIUM_VERSION=1.1.2.Final

USER root:root

COPY contrib/debezium-connector-postgres-${DEBEZIUM_VERSION} /opt/kafka/plugins/debezium-connector-postgres

USER 1001