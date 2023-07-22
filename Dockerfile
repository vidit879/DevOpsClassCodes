FROM tomcat:8-jre8

# Copy the addressbook.war to Tomcat's webapps directory
COPY /target/addressbook.war /usr/local/tomcat/webapps/

# Optionally, if you want to rename the application to "addressbook" (removing .war extension)
RUN mv /usr/local/tomcat/webapps/addressbook.war /usr/local/tomcat/webapps/addressbook

# Expose the default Tomcat port
EXPOSE 8080
