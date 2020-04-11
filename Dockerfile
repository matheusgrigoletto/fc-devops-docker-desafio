FROM golang:alpine

WORKDIR /go/src/
COPY . .
RUN GOOS=linux go build hello.go

EXPOSE 8081

ENTRYPOINT ["./hello"]