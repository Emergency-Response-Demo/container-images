FROM registry.access.redhat.com/ubi9/openjdk-11:1.13

USER 0

ADD ./contrib/settings.xml /m2/settings.xml
ADD ./contrib/run.sh /deployments/run.sh

RUN mkdir -p /m2/repository \
  && chown 185:0 /m2 \
  && chown 185:0 /m2/settings.xml \
  && chown 185:0 /m2/repository \
  && chmod 776 /m2 \
  && chmod 664 /m2/settings.xml \
  && chmod 776 /m2/repository \
  && chown 185:0 /deployments/run.sh \
  && chmod 755 /deployments/run.sh

USER 185

ENTRYPOINT [ "/deployments/run.sh" ]
