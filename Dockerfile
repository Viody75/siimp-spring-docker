FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

# Copy seluruh project
COPY . .

# Build langsung JAR-nya
RUN ./mvnw clean package -DskipTests

# Ambil jar dari hasil build di dalam container
# dan rename jadi app.jar (ini jalan di konteks Docker internal)
RUN cp target/*.jar app.jar

# Expose dan run
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
