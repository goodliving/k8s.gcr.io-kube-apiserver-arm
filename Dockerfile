FROM golang
RUN go get -u github.com/golang/dep/cmd/dep
RUN mkdir $GOPATH/src/github.com/kubernetes-helm -p && cd $GOPATH/src/github.com/kubernetes-helm && \
    git clone https://github.com/helm/chartmuseum.git && cd chartmuseum && \
    dep ensure -v -vendor-only
