FROM tomcat:9.0

RUN mkdir -p /usr/local/tomcat/webapps/mydockerapp

RUN cd /usr/local/tomcat/webapps/mydockerapp

RUN pwd

# COPY /usr/local/tomcat/webapps/ROOT /usr/local/tomcat/webapps/mydockerapp
 
ADD **/index.html /usr/local/tomcat/webapps/mydockerapp
 
EXPOSE 8080
 
CMD ["catalina.sh", "run"]
