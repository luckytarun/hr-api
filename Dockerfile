FROM alpine:3.17
LABEL AUTHOR="Java Home"
RUN apk add openjdk17-jre
WORKDIR /opt
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.74/bin/apache-tomcat-9.0.74.tar.gz .
RUN tar -xzvf apache-tomcat-9.0.74.tar.gz
CMD ["/opt/apache-tomcat-9.0.74/bin/catalina.sh", "run"]

