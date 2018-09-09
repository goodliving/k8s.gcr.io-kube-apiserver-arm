FROM golang
RUN go get -u github.com/golang/dep/cmd/dep
RUN mkdir $GOPATH/src/github.com/helm -p && cd $GOPATH/src/github.com/helm && \
    git clone https://github.com/helm/chartmuseum.git && cd chartmuseum && \
    dep ensure -v -vendor-only
RUN go get -u -v github.com/mitchellh/gox
