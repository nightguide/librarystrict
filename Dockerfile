FROM tomcat:8.0.20-jre8
ENV TZ=Asia/Novosibirsk
RUN apt-get update -y \
    apt-get install tzdata -y
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN rm -rf /usr/local/tomcat/webapps/ROOT/
COPY ./app/target/librarystrict.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
