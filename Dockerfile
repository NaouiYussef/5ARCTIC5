# Use the official OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot application JAR file into the container
COPY target/stationSki-1.1.0.jar app.jar

# Expose the port your Spring Boot application will run on
EXPOSE 80

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "app.jar"]
