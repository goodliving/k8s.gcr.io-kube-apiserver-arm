FROM alpine
RUN apk update && apk add git wget 
WORKDIR /opt
RUN wget https://dl.k8s.io/v1.16.3/kubernetes-server-linux-arm64.tar.gz
