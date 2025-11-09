# Use official Tomcat image
FROM tomcat:10-jdk17

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your project files to Tomcat webapps folder
COPY ./WebContent /usr/local/tomcat/webapps/ROOT

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
