# Use OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /usr/src/myapp

# Copy project files
COPY . .

# Build the project while skipping tests and license plugin
RUN ./mvnw clean package -DskipTests -Dlicense.skip=true

# Expose port (adjust if your app uses a different one)
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "target/jpetstore.war"]
