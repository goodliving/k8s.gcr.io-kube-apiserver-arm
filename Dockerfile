FROM golang
RUN go get -u -v github.com/mitchellh/gox
RUN cd $GOPATH && \
    mkdir kubernetes-helm -p && \
    cd kubernetes-helm && \
    git clone https://github.com/helm/chartmuseum.git && \
    cd chartmuseum/cmd/chartmuseum && 
    gox -osarch="linux/arm64"
