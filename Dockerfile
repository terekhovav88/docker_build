FROM java:8
MAINTAINER User "user@domain.com"
COPY app/SpringBootRestService-1.0.jar /opt
ENTRYPOINT ["/usr/bin/java", "-jar"]
CMD ["/opt/SpringBootRestService-1.0.jar", "--server.port=8080"]
