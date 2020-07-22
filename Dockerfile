FROM gradle:6.5.1-jdk11 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

FROM adoptopenjdk:11-jre-hotspot

RUN mkdir /app
COPY --from=build /home/gradle/src/build/libs/java-gradle-template-1.0-SNAPSHOT.jar /app/

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/java-gradle-template-1.0-SNAPSHOT.jar"]
