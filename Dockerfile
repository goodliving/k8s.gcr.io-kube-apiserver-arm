FROM golang:alpine
RUN apk update && apk add git
WORKDIR /opt
RUN git clone https://github.com/kubevirt/kubevirt.github.io.git
