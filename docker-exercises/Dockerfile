# Use an official OpenJDK 8 image based on Alpine Linux
FROM openjdk:17-jdk-alpine

# Expose port 8080 (This is just a declaration; it does not publish the port)
EXPOSE 8080

# Create the /opt/app directory
RUN mkdir /opt/app

# Copy the JAR file into the /opt/app directory
COPY build/libs/docker-exercises-project-1.0-SNAPSHOT.jar /opt/app

# Set the working directory to /opt/app
WORKDIR /opt/app

# Specify the command to run on container startup
CMD ["java", "-jar", "docker-exercises-project-1.0-SNAPSHOT.jar"]
