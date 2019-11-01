FROM tomcat:8-jre8
MAINTAINER chinnadas
RUN curl -o https://github.com/chinnadas/gameoflife-java-project.git
RUN cd gameoflife-java-project
RUN mvn package/
COPY gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8081
CMD ["catalina.sh", "run"]
