FROM tomcat:8.0.20-jre8
ENV TZ=Asia/Novosibirsk
RUN echo -e "LMT+06+08+07 \n<+07>-7" > /usr/share/zoneinfo/$TZ
<+07>-7' > /usr/share/zoneinfo/$TZ
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN rm -rf /usr/local/tomcat/webapps/ROOT/
COPY ./app/target/librarystrict.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
