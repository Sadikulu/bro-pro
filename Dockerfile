FROM openjdk:11-jdk-slim
ADD ./target/*.jar /home/user/src/realestate.jar
WORKDIR /home/user/src
ENTRYPOINT ["java","-jar","realestate.jar"]
