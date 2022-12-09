FROM golang:1.19.3-alpine as compiler

WORKDIR /app

COPY main.go .

RUN go build -o ./main ./main.go


FROM alpine:3

WORKDIR /app

COPY --from=compiler /app/main .

ENTRYPOINT ./main