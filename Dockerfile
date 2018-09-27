FROM tomcat:8.0.20-jre8
RUN rm -rf /usr/local/tomcat/webapps/ROOT/
COPY ./app/target/librarystrict.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
