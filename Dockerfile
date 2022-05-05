FROM gradle:latest

EXPOSE 8080

COPY . .

RUN apt update -y && apt upgrade -y

RUN ./gradlew test

RUN chmod a+x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]