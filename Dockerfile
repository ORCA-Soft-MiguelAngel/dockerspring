# FROM means from where you are taking a image, in this case we are using java
FROM openjdk:14
# VOLUME is needed for a spring boot app because tomcat needs a folder as a workflow
VOLUME /tmp
# ADD we use it to reference the jar file, but i need a better explanation...
ADD target/demo-0.0.1-SNAPSHOT.jar app.jar
# ENTRYPOINT brings options on how to run this application
ENTRYPOINT [ "java","-jar","/app.jar" ]
