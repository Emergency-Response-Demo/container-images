FROM registry.access.redhat.com/ubi8/openjdk-11:1.3

USER 0

ADD ./contrib/settings.xml /m2/settings.xml
ADD ./contrib/run.sh /deployments/run.sh

RUN mkdir -p /m2/repository \
  && chown 1001:0 /m2 \
  && chown 1001:0 /m2/settings.xml \
  && chown 1001:0 /m2/repository \
  && chmod 776 /m2 \
  && chmod 664 /m2/settings.xml \
  && chmod 776 /m2/repository \
  && chown 1001 /deployments/run.sh \
  && chmod 540 /deployments/run.sh

USER 1001

ENTRYPOINT [ "/deployments/run.sh" ]
