# Use official Tomcat 9 image
FROM tomcat:9.0

# Clean default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to Tomcat
COPY target/TapFood-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080
