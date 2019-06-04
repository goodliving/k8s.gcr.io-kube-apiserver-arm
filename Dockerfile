FROM golang:alpine
RUN apk update && apk add git wget 
WORKDIR /opt
RUN  wget https://github.com/coreos/prometheus-operator/archive/v0.30.0.tar.gz 
