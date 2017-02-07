# Pull base image  
FROM tomcat:7
MAINTAINER gucl<gucl@asiainfo.com>  

# Install tomcat7 
RUN rm -rf /opt/tomcat/webapps/* && mkdir /opt/tomcat/webapps/ROOT
COPY ./build/libs/uac.war /opt/tomcat/webapps/ROOT/ROOT.war
RUN cd /opt/tomcat/webapps/ROOT && jar -xf ROOT.war && rm -rf /opt/tomcat/webapps/ROOT.war

ADD ./script/start-web.sh /start-web.sh
RUN chmod 755 /*.sh  
  
# Define default command.  
CMD ["/start-web.sh"]