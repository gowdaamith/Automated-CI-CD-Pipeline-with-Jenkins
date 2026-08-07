# Build the application 

# Build Image
FROM maven:3.9.9-eclipse-temurin-17 AS build
# Working Directory Path 
WORKDIR /build   
# COPY the maven configuration file 
COPY pom.xml . 
# Downlaod the dependencies 
RUN mvn dependency:go-offline -B
# copy the source code 
COPY src ./src
# Build the JAR
RUN mvn clean package -DskipTests
# RUN the application 
FROM eclipse-temurin:17-jre
WORKDIR /app
# COPY THE JAR FILE PRODUCED FROM THE PREVIOUS STAGE BUILD 
COPY --from=build  /build/target/*.jar app.jar
EXPOSE 8082
ENTRYPOINT ["java","-jar","app.jar"]
CMD ["tail", "-f", "/dev/null"]
