###
FROM amazoncorretto:17-alpine

WORKDIR /app

RUN mkdir /logs

COPY build/libs/*.jar /app/spring-petclinic-data-jdbc.jar

ENTRYPOINT ["java", "-XX:ErrorFile=/logs/$(hostname -f).err_pid%p.log", "-jar", "spring-petclinic-data-jdbc.jar"]
