FROM tomcat:9.0

RUN mkdir -p /usr/local/tomcat/webapps/mydockerapp

COPY **/index.html /usr/local/tomcat/webapps/mydockerapp
 
# ADD **/index.html /usr/local/tomcat/webapps/mydockerapp
 
EXPOSE 8080
 
CMD ["catalina.sh", "run"]
