FROM openjdk:8u312-jdk-bullseye

WORKDIR /opt/jmx_prometheus
EXPOSE 5556

ENV JMX_PROMETHEUS_VERSION=0.16.1
RUN curl -L https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_httpserver/${JMX_PROMETHEUS_VERSION}/jmx_prometheus_httpserver-${JMX_PROMETHEUS_VERSION}-jar-with-dependencies.jar \
    --output jmx_prometheus_httpserver.jar

ENTRYPOINT ["java", "-jar", "jmx_prometheus_httpserver.jar", "5556"]
CMD ["/etc/jmx_prometheus.yml"]
