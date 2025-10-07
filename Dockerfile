# 1. Use a small base image
FROM openjdk:17-jdk-slim

# 2. Set working directory
WORKDIR /app

# 3. Copy your jar file into the container
COPY target/Docker-Practice-0.0.1-SNAPSHOT.jar app.jar

# 4. Expose port
EXPOSE 8080

# 5. Run the application
ENTRYPOINT ["java","-jar","app.jar"]
