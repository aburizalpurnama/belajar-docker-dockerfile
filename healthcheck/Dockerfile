FROM golang:1.19.3-alpine

RUN apk --no-cache add curl
RUN mkdir app
COPY main.go app

EXPOSE 8089

HEALTHCHECK --interval=5s --timeout=5s --start-period=5s --retries=3 CMD curl -f http://localhost:8089/health

CMD go run app/main.go