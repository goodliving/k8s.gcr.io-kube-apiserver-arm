FROM golang
RUN cd $GOPATH && \ 
    mkdir -p src/k8s.io && \
    cd src/k8s.io && \
    git clone https://github.com/kubernetes/helm.git && \
    cd helm/cmd/tiller && \
    gox --osarch="linux/arm64"

