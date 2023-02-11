
FROM openjdk:11-jdk-slim
ADD ./target/*.jar /realestate/src/realestate.jar
WORKDIR /realestate/src
ENTRYPOINT ["java","-jar","realestate.jar"]
