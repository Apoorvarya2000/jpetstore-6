FROM openjdk:17.0.2
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN ./mvnw clean package -DskipTests -Dlicense.skip=true
CMD ./mvnw cargo:run -P tomcat90
