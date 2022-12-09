FROM golang:1.19.3-alpine

RUN mkdir app
COPY main.go app

EXPOSE 8089

ENTRYPOINT [ "go", "run" ]

CMD ["app/main.go"] 