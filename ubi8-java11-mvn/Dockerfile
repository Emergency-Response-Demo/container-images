FROM registry.access.redhat.com/ubi9/openjdk-11:1.14-2.1681920275

USER 0

ADD ./contrib/settings.xml /m2/settings.xml
ADD ./contrib/run.sh /deployments/run.sh

RUN mkdir -p /m2/repository \
  && chown -R 185 /m2 \
  && chmod -R 776 /m2 \
  && chown -R 185 /deployments \
  && chmod 755 /deployments/run.sh

USER 185

ENTRYPOINT [ "/deployments/run.sh" ]
