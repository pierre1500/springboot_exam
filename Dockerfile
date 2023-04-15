# Utiliser une image de base avec OpenJDK et Maven préinstallés
FROM maven:3.8.1-openjdk-17-slim AS build

WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ /app/src/
RUN mvn package

FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /app/target/hackwhitehat-0.0.1-SNAPSHOT.jar /app/hackwhitehat-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar", "hackwhitehat-0.0.1-SNAPSHOT.jar"]

