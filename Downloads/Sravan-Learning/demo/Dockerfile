# Use an official lightweight Java Runtime Environment (JRE) image
FROM openjdk:21-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application's JAR file from the Maven build's target directory
# You must run 'mvn package' before building the Docker image
COPY target/*.jar app.jar

# The application is exposed on port 8080 (Spring Boot default)
EXPOSE 8080

# The command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]