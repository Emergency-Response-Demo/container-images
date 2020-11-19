FROM registry.redhat.io/amq7/amq-streams-kafka-25-rhel7:1.5.0

ENV DEBEZIUM_VERSION=1.3.1.Final

USER root:root

COPY contrib/debezium-connector-postgres-${DEBEZIUM_VERSION} /opt/kafka/plugins/debezium-connector-postgres

USER 1001