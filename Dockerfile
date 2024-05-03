# Use OpenJDK 11 as the base image
FROM eclipse-temurin:17-jdk-alpine

# Expose port 8090
EXPOSE 8090

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/achat-1.0.jar /app/achat-1.0.jar


CMD ["java", "-jar", "achat-1.0.jar"]
