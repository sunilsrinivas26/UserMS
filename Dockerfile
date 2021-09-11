FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/Product-Microservice 0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8100
ENV JAVA_OPTS=""
RUN sh -c "touch Product-Microservice 0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "Product-Microservice 0.0.1-SNAPSHOT.jar" ]
