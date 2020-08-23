FROM adoptopenjdk:14-jre-hotspot-bionic

ARG KAFKA_VERSION=2.6.0
ARG SCALA_VERSION=2.13

RUN mkdir -p /opt/kafka && \
    curl -sS -o /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz https://downloads.apache.org/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz && \
    tar xfz /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz --strip-components=1 -C /opt/kafka && \
    rm /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz

WORKDIR /opt/kafka
