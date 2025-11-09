# Use official Tomcat image with Java 17
FROM tomcat:10-jdk17

# Remove the default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your entire project (all JSPs, WEB-INF, css, js, etc.) to Tomcat's ROOT folder
COPY . /usr/local/tomcat/webapps/ROOT

# Expose port 8080 for web access
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
