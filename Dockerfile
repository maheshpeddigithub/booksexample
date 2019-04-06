FROM java:8
EXPOSE 8080
ADD /target/booksexample-1.0.0.jar booksexample.jar
ENTRYPOINT ["java", "-jar", "booksexample.jar"]