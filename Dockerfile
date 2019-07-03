FROM golang:alpine
RUN apk update && apk add git wget 
WORKDIR /opt
RUN wget https://dl.k8s.io/v1.15.0-rc.1/kubernetes-server-linux-amd64.tar.gz
