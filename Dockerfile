FROM eclipse-temurin:17-jre

WORKDIR /app

COPY --from=build /app/target/my-app-1.0-SNAPSHOT.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
