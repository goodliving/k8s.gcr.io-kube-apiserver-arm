FROM golang:alpine
RUN apk update && apk add git
WORKDIR /opt
RUN git clone https://github.com/micro/go-grpc.git && cd go-grpc && go get
