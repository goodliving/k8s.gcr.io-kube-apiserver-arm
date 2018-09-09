FROM golang
FROM apt-get update && apt-get install make -y
RUN cd $GOPATH && \
    mkdir -p src/k8s.io && \
    cd src/k8s.io && \
    git clone https://github.com/kubernetes/helm.git && \
    cd helm && \
    make bootstrap build
