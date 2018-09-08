FROM golang
RUN go get github.com/mitchellh/gox
RUN cd $GOPATH && \
    mkdir kubernetes-helm -p && \
    git clone https://github.com/helm/chartmuseum.git && \
    cd chartmuseum/cmd/chartmuseum && 
    gox 
