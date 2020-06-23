
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ADD target/discovery-service-0.0.1-SNAPSHOT.jar rms-discovery-service.jar
EXPOSE 8761
# ENTRYPOINT exec java $JAVA_OPTS -jar rms-discovery-service.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar rms-discovery-service.jar
