FROM openjdk:11

ADD target/category-management-service-0.0.1-SNAPSHOT.jar category-management.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "category-management.jar"]