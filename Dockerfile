FROM openjdk:11-jdk-slim
ADD ./target/*.jar /home/user/src/target/realestate-0.0.1-SNAPSHOT.jar
WORKDIR /home/user/src
ENTRYPOINT ["java","-jar","realestate.jar"]
