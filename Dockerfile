FROM golang:alpine
RUN apk update && apk add git wget 
WORKDIR /opt
RUN git clone https://github.com/coreos/kube-prometheus.git
