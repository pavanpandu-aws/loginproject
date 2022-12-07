FROM tomcat:latest
LABEL maintainer="pavan kumar"
ADD ./target/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
