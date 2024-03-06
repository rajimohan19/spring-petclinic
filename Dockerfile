# Alpine Linux with OpenJDK JRE
FROM amazoncorretto:17.0.10-al2-native-headless

EXPOSE 8080

# copy jar into image
COPY target/*.jar /usr/bin/spring-petclinic.jar

# run application with this command line 
ENTRYPOINT ["java","-jar","/usr/bin/spring-petclinic.jar","--server.port=8080"]
