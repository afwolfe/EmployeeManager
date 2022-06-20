FROM eclipse-temurin:16-jdk as build

WORKDIR /build
COPY . .

RUN ./gradlew --no-daemon bootJar

FROM alpine:3 as app
RUN apk --no-cache add openjdk16-jre-headless

WORKDIR /app
COPY --from=build /build/build/libs/employeemanager-*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
