FROM adoptopenjdk:16-jre

WORKDIR /employee-manager-backend
COPY ./build/libs/employeemanager-0.0.1-SNAPSHOT.jar /employee-manager-backend

EXPOSE 8080

CMD ["java", "-jar", "employeemanager-0.0.1-SNAPSHOT.jar"]
