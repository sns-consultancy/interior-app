# Use lightweight Java 21 image
FROM eclipse-temurin:21-jdk-alpine

# Create app directory
WORKDIR /app

# Copy compiled classes and JAR
COPY target/interior-app.jar /app/app.jar

# Set entrypoint
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
