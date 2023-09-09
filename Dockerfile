FROM golang:1.21.1

RUN apt-get update && apt-get install -y unzip

RUN apt install -y protobuf-compiler

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2

RUN export PATH="$PATH:$(go env GOPATH)/bin"

WORKDIR /app
