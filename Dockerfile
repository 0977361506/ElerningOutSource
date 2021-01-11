FROM java:8
EXPOSE 8082
ADD /target/project_learning-0.0.1-SNAPSHOT.war project_learning-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java", "-jar", "/project_learning-0.0.1-SNAPSHOT.war"]
