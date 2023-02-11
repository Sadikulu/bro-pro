FROM maven:3.8.2-jdk-11 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:11-jdk-slim
ADD ./target/*.jar /user/src/realestate-0.0.1-SNAPSHOT.jar
WORKDIR /user/src
ENTRYPOINT ["java","-jar","realestate.jar"]
