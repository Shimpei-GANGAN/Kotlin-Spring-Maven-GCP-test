FROM openjdk:14-jdk-alpine

RUN mkdir /work
COPY ./demo /work
WORKDIR /work

RUN /work/mvnw package
RUN mv /work/target/*.jar /work/app.jar
ENTRYPOINT [ "java", "-jar", "/work/app.jar" ]

# RUN /work/gradlew build
# RUN mv /work/build/libs/*.jar /work/app.jar
# ENTRYPOINT [ "java","-Djava.security.egd=file:/dev/./urandom", "-jar", "/work/app.jar" ]
