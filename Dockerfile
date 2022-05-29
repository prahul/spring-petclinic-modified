FROM openjdk:11
COPY /build/libs/*.jar /app/spring-petclinic.jar
EXPOSE 8080
ENTRYPOINT java -jar /app/spring-petclinic.jar
