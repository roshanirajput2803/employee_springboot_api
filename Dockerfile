# Use Java 17 base image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# ✅ Give execute permission to mvnw
RUN chmod +x mvnw

# Build the app
RUN mvn -B clean package -DskipTests

# Expose port 8080
EXPOSE 8080

# Run the jar
CMD ["java", "-jar", "target/employee_springboot_api.jar"]
