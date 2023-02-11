FROM openjdk:11-jdk-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} realestate.jar
ENTRYPOINT ["java","-jar","realestate.jar"]
