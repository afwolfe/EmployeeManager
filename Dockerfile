FROM adoptopenjdk:16-jre
#from liberica-openjre-alpine-musl:16

WORKDIR /app
COPY ./build/libs/employeemanager-0.0.1-SNAPSHOT.jar /app

EXPOSE 8080

CMD ["java", "-jar", "employeemanager-0.0.1-SNAPSHOT.jar"]
