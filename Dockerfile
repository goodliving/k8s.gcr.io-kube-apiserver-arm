FROM nginx:alpine
RUN apk update && apk add wget && wget https://storage.googleapis.com/kubernetes-helm/helm-v2.10.0-linux-amd64.tar.gz
