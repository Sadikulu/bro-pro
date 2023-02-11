FROM openjdk:11-jdk-slim
ADD ./target/*.jar /src/target/realestate-0.0.1-SNAPSHOT.jar
WORKDIR /src
ENTRYPOINT ["java","-jar","realestate.jar"]
