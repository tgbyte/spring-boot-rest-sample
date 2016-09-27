FROM openjdk:8

EXPOSE 8080

ADD .build/gs-accessing-data-rest-0.1.0.jar /opt/spring-boot-rest-sample/
CMD ["java", "-jar", "/opt/spring-boot-rest-sample/gs-accessing-data-rest-0.1.0.jar"]
