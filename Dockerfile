FROM openjdk:11

WORKDIR /app

COPY gradlew gradlew.bat /app/

COPY . .

RUN chmod +x gradlew

RUN ./gradlew build

EXPOSE 8080

CMD ["java", "-jar", "build/libs/java-todo.jar"]

