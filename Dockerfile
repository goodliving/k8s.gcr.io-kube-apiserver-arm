FROM alpine
RUN apk update && apk add wget
RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.11.3/kubernetes-server-linux-amd64.tar.gz
