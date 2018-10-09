FROM alpine
RUN apk update && apk add wget 
RUN wget https://dl.k8s.io/v1.11.0/kubernetes-server-linux-amd64.tar.gz
