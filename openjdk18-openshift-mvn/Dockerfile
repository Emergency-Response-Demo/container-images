FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift:1.8

ADD ./contrib/run /usr/local/s2i/run

USER root

RUN chown root:root /usr/local/s2i/run && \
    chmod 755 /usr/local/s2i/run

USER 185
