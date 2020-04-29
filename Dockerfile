FROM openjdk:8-jdk-alpine

MAINTAINER Kuba Wasilewski <k.k.wasilewski@gmail.com>

VOLUME /tmp

EXPOSE 8083

ARG JAR_FILE=target/server_discovery-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} server_discovery.jar

ENTRYPOINT ["java","-jar","/server_discovery.jar"]
