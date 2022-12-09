FROM golang:1.19.3-alpine

ARG app=main

RUN mkdir /app

RUN addgroup -S purnamagroup
RUN adduser -S -D -h /app purnamauser purnamagroup
RUN chown -R purnamauser:purnamagroup /app

USER purnamauser

COPY main.go /app

RUN mv /app/main.go /app/${app}.go

EXPOSE 8089

ENV app=${app}
CMD go run /app/${app}.go