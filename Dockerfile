FROM adoptopenjdk/openjdk11:alpine-jre
VOLUME /tmp
ARG JAR_FILE=target/helloworld*.jar
COPY ${JAR_FILE} /app.jar
ENTRYPOINT ["java -cp /app.jar com.coveros.demo.helloworld.HelloWorld"]
