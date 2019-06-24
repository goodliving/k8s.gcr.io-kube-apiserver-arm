FROM golang:alpine
RUN apk update && apk add git wget 
WORKDIR /opt
RUN git clone https://github.com/loadimpact/k6.git
