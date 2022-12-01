FROM maven:3-openjdk-18 as builder

RUN mkdir -p /build
WORKDIR /build
COPY pom.xml /build

RUN mvn -B dependency:resolve dependency:resolve-plugins

COPY src /build/src

RUN mvn package

FROM tomcat:8.5-jdk11-openjdk-slim
COPY --from=builder /build/target/proyectoweb.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]