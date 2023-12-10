FROM openjdk:17

VOLUME /tmp

EXPOSE 8761

ARG JAR_FILE=build/libs/eureka_server-1.0.0.jar

ADD ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]