FROM tomcat
 WORKDIR /usr/local/tomcat/webapps
 COPY MyPipeline/target/Web.war .
 RUN mv Web.war ROOT.war
 RUN rm -rf ROOT
 CMD ["catalina.sh", "run"]
