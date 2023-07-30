FROM tomcat:9.0

RUN cd /usr/local/tomcat/webapps/

RUN pwd

RUN mkdir -p /usr/local/tomcat/webapps/mydockerapp

# COPY /usr/local/tomcat/webapps/ROOT /usr/local/tomcat/webapps/mydockerapp
 
ADD **/index.html /usr/local/tomcat/webapps/mydockerapp
 
EXPOSE 8080
 
CMD ["catalina.sh", "run"]
