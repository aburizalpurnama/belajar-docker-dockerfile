FROM golang:1.19.3-alpine
ENV APP_PORT=8089

RUN mkdir app
COPY main.go app

EXPOSE ${APP_PORT}

CMD go run app/main.go