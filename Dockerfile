FROM tomcat:9.0

RUN mkdir -p /usr/local/tomcat/webapps/mydockerapp

# COPY **/*.html /usr/local/tomcat/webapps/mydockerapp
 
ADD **/*.html /tmp
 
EXPOSE 8080
 
CMD ["catalina.sh", "run"]
