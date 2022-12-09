FROM golang:1.19.3-alpine

RUN mkdir /app

RUN addgroup -S purnamagroup
RUN adduser -S -D -h /app purnamauser purnamagroup
RUN chown -R purnamauser:purnamagroup /app

USER purnamauser

COPY main.go /app

EXPOSE 8089
CMD go run /app/main.go