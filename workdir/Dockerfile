FROM golang:1.19.3-alpine
ENV APP_PORT=8089
ENV APP_DATA=/logs

WORKDIR /app
RUN mkdir ${APP_DATA}

COPY main.go /app

EXPOSE ${APP_PORT}
VOLUME ${APP_DATA}

CMD go run main.go