#FROM java:openjdk-8u111-jdk-alpine


#ARG JAR_FILE=target/*.jar
#COPY ./target/achat-1.0.jar app.jar

#ENTRYPOINT ["java", "-jar", "/app.jar"]
#
# Build stage
#
FROM maven:3.8.3-openjdk-17 AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package
EXPOSE 8080
ENTRYPOINT ["java","-jar","/home/app/target/achat_rest_docker.jar"]