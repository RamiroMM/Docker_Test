FROM tomcat:9.0

RUN mkdir -p /usr/local/tomcat/webapps/mydockerapp

# COPY **/*.html /usr/local/tomcat/webapps/mydockerapp
 
ADD https://raw.githubusercontent.com/RamiroMM/Docker_Test/main/index.html /usr/local/tomcat/webapps/mydockerapp

# RUN if [ -f *.html ] ; then echo "File exists"; else echo "File not found"; fi
 
EXPOSE 8080
 
CMD ["catalina.sh", "run"]
