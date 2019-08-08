FROM openjdk:8-jdk-alpine
MAINTAINER Saket Kashyap "saket.kashyap.ait@gmail.com"
VOLUME /tmp
ADD target/*.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]