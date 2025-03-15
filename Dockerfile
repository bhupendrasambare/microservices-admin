# ---- Stage 1: Build the application ----
FROM openjdk:21-jdk-slim AS builder

# Set working directory
WORKDIR /app

# Copy Maven-related files first to leverage Docker caching
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

# Download dependencies before copying the source code
RUN ./mvnw dependency:go-offline

# Copy the source code
COPY src/ src/

# Build the JAR file
RUN ./mvnw clean package -DskipTests

# ---- Stage 2: Create a minimal runtime image ----
FROM openjdk:21-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the built JAR from the builder stage
COPY --from=builder /app/target/*.jar app.jar

# Expose the port that the application listens on
EXPOSE 8761

# Run the application with required environment variables
CMD ["java", "-jar", "app.jar", "--custom.server-ip=${CUSTOM_SERVER_IP}"]